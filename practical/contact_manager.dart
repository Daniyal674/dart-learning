import 'dart:io';

class Contact{
    String name;
    String phone;
    String _email;

    Contact(this.name, this.phone, this._email);

    void display(){
        print('Name: $name, \nPhone: $phone, \nEmail: $_email');
    }

    String getEmail(){
        return _email;
    }
}

class ContactManager{
    List<Contact> contacts = [];


    void addContact(Contact c){
        contacts.add(c);
    }

    void removeContact(String name) {
        bool exists = contacts.any((contact) => contact.name == name);
        if (!exists) {
            throw ContactNotFoundException('Contact not found: $name');
        }
        contacts.removeWhere((contact) => contact.name == name);
    }

    void listContacts(){
        if(contacts.isEmpty){
            print('No contacts available.');
        } else {
            for(var contact in contacts){
                contact.display();
                print('-------------------');
            }
        }
    }

    Contact findContact(String name){
        for(var contact in contacts){
            if(contact.name == name){
                return contact;
            }
        }
        throw ContactNotFoundException('Contact not found: $name');
    }
}

class ContactNotFoundException implements Exception {
  String message;
  ContactNotFoundException(this.message);

  @override
  String toString() => 'ContactNotFoundException: $message';
}

void main() {
  ContactManager manager = ContactManager(); // ONE instance, created once

  while (true) {
    print('Contact Manager');
    print('1. Add Contact');
    print('2. Remove Contact');
    print('3. List Contacts');
    print('4. Find Contact');
    print('5. Exit');
    stdout.write('Choose an option: ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Enter name: ');
        String? name = stdin.readLineSync();
        stdout.write('Enter phone: ');
        String? phone = stdin.readLineSync();
        stdout.write('Enter email: ');
        String? email = stdin.readLineSync();
        if (name != null && phone != null && email != null) {
          manager.addContact(Contact(name, phone, email));
          print('Contact added successfully.');
        } else {
          print('Invalid input. Please try again.');
        }
        break;
      case '2':
        stdout.write('Enter name of contact to remove: ');
        String? nameToRemove = stdin.readLineSync();
        if (nameToRemove != null) {
          try {
            manager.removeContact(nameToRemove);
            print('Contact removed successfully.');
          } catch (e) {
            print(e);
          }
        } else {
          print('Invalid input. Please try again.');
        }
        break;
      case '3':
        manager.listContacts();
        break;
      case '4':
        stdout.write('Enter name of contact to find: ');
        String? nameToFind = stdin.readLineSync();
        if (nameToFind != null) {
          try {
            Contact c = manager.findContact(nameToFind);
            c.display();
          } catch (e) {
            print(e);
          }
        } else {
          print('Invalid input. Please try again.');
        }
        break;
      case '5':
        print('Exiting');
        return;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}