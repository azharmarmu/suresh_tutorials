import 'package:flutter/material.dart';

import 'utils/app_routes.dart';
import 'utils/app_theme.dart';

class XOXApp extends StatelessWidget {
  const XOXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      onGenerateRoute: appRoutes,
    );
  }
}
