import 'package:contact_list/src/utils/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:contact_list/src/controller/contact_controller.dart';
import 'package:contact_list/src/model/entities/contact.dart';
import 'package:contact_list/src/view/contact/add_contact_view.dart';
import 'package:contact_list/src/view/contact/contact_list_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ContactController _contactController = ContactController();

  void _addContact(Contact contact) {
    setState(() {
      _contactController.addContact(contact.name, contact.number);
    });
  }

  void _deleteContact(Contact contact) {
    setState(() {
      _contactController.deleteContact(contact);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Container(
          color: AppColors.black,
          child: AppBar(
            title: const Text('Contact List'),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          ColoredBox(
            color: AppColors.white,
            child: AddContactView(
              onAddContact: _addContact,
              nameValidation: _contactController.validateName,
              numberValidation: _contactController.validateNumber,
            ),
          ),


          Expanded(
            flex: 3,
            child: ContactListView(
              contacts: _contactController.getContacts(),
              onDeleteContact: _deleteContact,
            ),
          ),

        ],
      ),
    );
  }
}