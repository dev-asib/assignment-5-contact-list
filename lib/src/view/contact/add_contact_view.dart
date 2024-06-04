import 'package:flutter/material.dart';
import 'package:contact_list/src/model/entities/contact.dart';

class AddContactView extends StatefulWidget {
  const AddContactView({
    super.key,
    required this.onAddContact,
    required this.nameValidation,
    required this.numberValidation,
  });

  final Function(Contact) onAddContact;
  final String? Function(String?) nameValidation;
  final String? Function(String?) numberValidation;

  @override
  _AddContactViewState createState() => _AddContactViewState();
}

class _AddContactViewState extends State<AddContactView> {
  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _numberTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _nameTEController,
              keyboardType: TextInputType.text,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                hintText: "Name",
                labelText: "Name",
              ),
              validator: widget.nameValidation,
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: _numberTEController,
              keyboardType: TextInputType.number,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                hintText: "Number",
                labelText: "Number",
              ),
              validator: widget.numberValidation,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  final newContact = Contact(
                    _nameTEController.text,
                    _numberTEController.text,
                  );
                  widget.onAddContact(newContact);
                  _nameTEController.clear();
                  _numberTEController.clear();
                }
              },
              child: const Text("ADD"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameTEController.dispose();
    _numberTEController.dispose();
    super.dispose();
  }
}
