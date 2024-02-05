import 'package:flutter/material.dart';
import 'package:whatsapp/database/shared_preferences.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      // body: Column(
      //   children: [
      //     TextField(
      //       controller: controller,
      //     ),
      //     TextButton(
      //       onPressed: () {
      //         sharedDB.setSecretValue(controller.text.trim());
      //         setState(() {});
      //       },
      //       child: const Text('Save'),
      //     ),
      //     const SizedBox(height: 48),
      //     FutureBuilder(
      //       future: SharedPreferencesDB().getSecretValue(),
      //       builder: (_, snaps) {
      //         if (snaps.connectionState == ConnectionState.done) {
      //           return Text('Secret Value: ${snaps.data}');
      //         }
      //         return const SizedBox.shrink();
      //       },
      //     ),
      //   ],
      // ),
      body: contacts.isEmpty
          ? const Center(
              child: Text('No Contacts'),
            )
          : ListView.separated(
              itemBuilder: (_, index) => ListTile(
                title: Text(contacts[index].name),
                subtitle: Text(contacts[index].number),
              ),
              separatorBuilder: (_, index) => const Divider(),
              itemCount: contacts.length,
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //logic
          await showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return CreateContactDialog();
            },
          );

          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
