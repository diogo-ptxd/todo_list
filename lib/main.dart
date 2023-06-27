import 'package:flutter/material.dart';
import 'ContactDetailsScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Lista Telefónica',
      home: ContactsPage(),
    );
  }
}

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contacts"),
        ),
        body: const ContactList(kContacts));
  }
}

const kContacts = <Contact>[
  Contact(fullName: 'Romain Hoogmoed', email: 'romain.hoogmoed@example.com', phone: '9213412312', address: 'West Avenue 92, New York', phrase: 'I love dogs!'),
  Contact(fullName: 'Emilie Olsen', email: 'emilie.olsen@example.com', phone: '930213223', address: 'West Bound 19, Dallas', phrase: 'I love cats!'),
  Contact(fullName: 'Roosvelt Edgard', email: 'roosvelt.edgard@example.com', phone: '984123542', address: 'South Highway 56, Massachussets', phrase: 'I love sheep!'),
  Contact(fullName: 'John Hammond', email: 'john.hammond@example.com', phone: '987512392', address: 'North Avenue 101, New York', phrase: 'I love elephants!'),
  Contact(fullName: 'Anna Olsen', email: 'anna.olsen@example.com', phone: '98612379', address: 'White House, Washington', phrase: 'I love lions!')
];

class ContactList extends StatelessWidget {
  final List<Contact> _contacts;

  const ContactList(this._contacts, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      itemBuilder: (context, index) {
        return _ContactListItem(_contacts[index]);
      },
      itemCount: _contacts.length,
    );
  }
}

class _ContactListItem extends StatelessWidget {
  final Contact contact;

  const _ContactListItem(this.contact);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ContactDetailsScreen(contact: contact),
          ),
        );
      },
      child: ListTile(
        title: Text(contact.fullName),
        subtitle: Text(contact.phrase),
        leading: CircleAvatar(child: Text(contact.fullName[0])),
      ),
    );
  }
}

class Contact {
  final String fullName;
  final String email;
  final String phone;
  final String address;
  final String phrase;

  const Contact({required this.fullName, required this.email, required this.phone, required this.address, required this.phrase});
}
