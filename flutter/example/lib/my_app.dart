import 'package:flutter/material.dart';
import 'package:whatsapp/screens/default_screen.dart';
import 'package:whatsapp/screens/second_screen.dart';
import 'package:whatsapp/screens/third_screen.dart';

import 'screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouteConstants.home,
      onGenerateRoute: generateRoute,
    );
  }
}

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRouteConstants.home:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
        settings: const RouteSettings(name: AppRouteConstants.home),
      );
    case AppRouteConstants.second:
      return MaterialPageRoute(builder: (context) => const SecondScreen());
    case AppRouteConstants.third:
      return MaterialPageRoute(
        builder: (context) => const ThirdScreen(),
        settings: const RouteSettings(name: AppRouteConstants.third),
      );
    default:
      return MaterialPageRoute(builder: (context) => const DefaultScreen());
  }
}

class AppRouteConstants {
  static const String home = '/';
  static const String second = '/second';
  static const String third = '/third';
}
