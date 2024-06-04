import 'package:contact_list/src/utils/color_pallete.dart';
import 'package:contact_list/src/widgets/contact_delete_confirmation_dialog.dart';
import 'package:flutter/material.dart';
import 'package:contact_list/src/model/entities/contact.dart';

class ContactListView extends StatelessWidget {
  const ContactListView({
    super.key,
    required this.contacts,
    required this.onDeleteContact,
  });

  final List<Contact> contacts;
  final Function(Contact) onDeleteContact;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        final contact = contacts[index];
        return GestureDetector(
          onLongPress: () {
            showDialog(
              context: context,
              builder: (context) => DeleteConfirmationDialog(
                onDelete: () {
                  onDeleteContact(contact);
                  Navigator.of(context).pop();
                },
              ),
            );
          },
          child: ListTile(
            leading: const Icon(
              Icons.person,
              color: AppColors.brown,
              size: 35,
            ),
            title: Text(
              contact.name,
              style: const TextStyle(color: AppColors.red),
            ),
            subtitle: Text(
              contact.number,
              style: const TextStyle(color: AppColors.grey),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.phone,
                color: AppColors.blue,
                size: 35,
              ),
            ),
          ),
        );
      },
      separatorBuilder: (_, __) {
        return const Divider(
          thickness: 3,
          height: 10,
        );
      },
    );
  }
}
