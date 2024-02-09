import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:whatsapp/utils/app_routes.dart';

Future<void> main() async {
  await Hive.initFlutter();
  runApp(const ContactApp());
}

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: AppRoutes.rootPage,
      onGenerateRoute: appGeneratedRoutes,
    );
  }
}
