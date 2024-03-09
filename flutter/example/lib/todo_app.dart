import 'package:flutter/material.dart';

import 'core/app_routes.dart';

class TODOApp extends StatelessWidget {
  const TODOApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouteConstants.home,
      onGenerateRoute: generateRoute,
    );
  }
}
