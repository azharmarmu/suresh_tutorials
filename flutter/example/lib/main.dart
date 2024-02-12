import 'package:flutter/material.dart';
import 'package:whatsapp/utils/app_routes.dart';

void main() {
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
