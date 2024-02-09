import 'package:flutter/material.dart';
import 'package:whatsapp/models/contact_model.dart';

import '../database/contacts.dart';

class CreateContactDialog extends StatelessWidget {
  final List<ContactModel> contacts;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  CreateContactDialog({
    super.key,
    required this.contacts,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SizedBox(
          height: size.height / 2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 32),
              const Text('New Contact'),
              const SizedBox(height: 16),
              SizedBox(
                height: 54,
                width: size.width - 32,
                child: TextField(
                  controller: nameController,
                  decoration:
                      const InputDecoration(label: Text('Contact Name')),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 54,
                width: size.width - 32,
                child: TextField(
                  controller: numberController,
                  decoration: const InputDecoration(
                    label: Text('Contact Number'),
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  final name = nameController.text.trim();
                  final number = numberController.text.trim();

                  if (name.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.amber,
                        content: Text('Name cannot be Empty'),
                      ),
                    );
                  } else if (number.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.amber,
                        content: Text('Number cannot be Empty'),
                      ),
                    );
                  } else {
                    //save value to DB
                    contacts.add(ContactModel(name: name, number: number));
                    saveContact(contacts);
                    Navigator.pop(context);
                  }
                },
                child: const Text('SAVE'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
