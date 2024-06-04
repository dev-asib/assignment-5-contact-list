import 'package:flutter/material.dart';
import 'package:contact_list/src/model/entities/contact.dart';

class AddContactView extends StatefulWidget {
  const AddContactView({
    super.key,
    required this.onAddContact,
  });

  final Function(Contact) onAddContact;

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
              validator: (String? nameValue) {
                if (nameValue == null || nameValue.trim().isEmpty) {
                  return "Enter a valid name.";
                } if(nameValue.length>4 == true){
                  return "Name length can't be less than 4.";
                }
                return null;
              },
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
              validator: (String? numberValue) {
                if (numberValue == null || numberValue.trim().isEmpty) {
                  return "Enter a valid number.";
                }
                if(numberValue.length>11 || numberValue.length<11){
                  return "Number can't be less than or greater than 11";
                }
                return null;
              },
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
