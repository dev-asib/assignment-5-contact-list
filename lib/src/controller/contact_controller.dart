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

  String? validateName(String? nameValue) {
    if (nameValue == null || nameValue.trim().isEmpty) {
      return "Enter a valid name.";
    } if(nameValue.length<4 == true){
      return "Name length can't be less than 4.";
    }
    return null;
  }



  String? validateNumber(String? numberValue) {
    if (numberValue == null || numberValue.trim().isEmpty) {
      return "Enter a valid number.";
    }
    if(numberValue.length>11 || numberValue.length<11){
      return "Number can't be less than or greater than 11";
    }
    return null;
  }

}
