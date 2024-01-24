import 'package:flutter/material.dart';

import 'utils/app_route_constants.dart';
import 'utils/app_theme.dart';
import 'utils/route.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouteConstants.homeScreen,
      onGenerateRoute: generateRoute,
    );
  }
}
