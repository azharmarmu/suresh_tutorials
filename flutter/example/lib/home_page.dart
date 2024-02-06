import 'package:flutter/material.dart';
import 'package:whatsapp/database/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SharedPreferencesDB sharedDB = SharedPreferencesDB();
  final controller = TextEditingController();

  bool themeValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Shared-Pref DB'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            //Push notification
            FutureBuilder(
              future: sharedDB.getPushValue(),//get
              builder: (context, snaps) {
                bool pushValue = false;
                if (snaps.connectionState == ConnectionState.done) {
                  pushValue = snaps.data!;
                }
                return SwitchListTile(
                  value: pushValue,
                  title: const Text('Push Notifications'),
                  onChanged: (bool? val) {
                    pushValue = val!;
                    sharedDB.setPushValue(pushValue); //set
                    setState(() {});
                  },
                );
              },
            ),

            //Theme
            SwitchListTile(
              value: themeValue,
              title: const Text('Theme'),
              onChanged: (bool? val) {
                themeValue = val!;
                setState(() {});
              },
            )

            //Todo save your name-string and mobile number-num/int
          ],
        ),
      ),
    );
  }
}
