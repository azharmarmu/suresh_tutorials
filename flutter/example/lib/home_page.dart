import 'package:flutter/material.dart';
import 'package:whatsapp/database/shared_preferences.dart';
import 'package:whatsapp/models/contact_model.dart';

import 'database/contacts.dart';
import 'dialogs/create_contact_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SharedPreferencesDB sharedDB = SharedPreferencesDB();
  final controller = TextEditingController();

  List<ContactModel> contacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: FutureBuilder(
        future: getContacts(),
        builder: (_, snaps) {
          if (snaps.connectionState == ConnectionState.done) {
            if (snaps.data != null) {
              contacts = snaps.data!;
            }
          }

          if (contacts.isNotEmpty) {
            return ListView.separated(
              itemBuilder: (_, index) => ListTile(
                title: Text(contacts[index].name),
                subtitle: Text(contacts[index].number),
              ),
              separatorBuilder: (_, index) => const Divider(),
              itemCount: contacts.length,
            );
          } else {
            return const Center(
              child: Text('No Contacts'),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //logic
          await showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return CreateContactDialog(contacts: contacts);
            },
          );

          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
