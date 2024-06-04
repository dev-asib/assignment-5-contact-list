import 'package:contact_list/src/model/entities/contact.dart';

class ContactController {
  List<Contact> contacts = [];

  void addContact(String name, String number) {
    contacts.add(Contact(name, number));
  }

  void deleteContact(Contact contact) {
    contacts.remove(contact);
  }

  List<Contact> getContacts() {
    return contacts;
  }
}
