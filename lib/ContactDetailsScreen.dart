import 'package:flutter/material.dart';

import 'main.dart';

class ContactDetailsScreen extends StatelessWidget {
  final Contact contact;

  const ContactDetailsScreen({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(contact.fullName),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: CircleAvatar(
                    radius: 40.0, child: Text(contact.fullName[0])),
              ),
              const SizedBox(height: 16.0),
              Center(
                child: Text(
                  contact.fullName,
                  style: const TextStyle(
                      fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8.0),
              Center(
                child: Text(
                  contact.phrase,
                  style: const TextStyle(
                      fontSize: 20.0, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  const Icon(Icons.email),
                  const SizedBox(width: 8.0),
                  Text(contact.email),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  const Icon(Icons.phone),
                  const SizedBox(width: 8.0),
                  Text(contact.phone),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  const Icon(Icons.location_city),
                  const SizedBox(width: 8.0),
                  Text(contact.address),
                ],
              ),
            ])));
  }
}
