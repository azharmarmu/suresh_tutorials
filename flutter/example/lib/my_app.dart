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
      home: HomeScreen(),
      onGenerateRoute: generateRoute,
    );
  }
}

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRouteConstants.home:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
    case AppRouteConstants.second:
      return MaterialPageRoute(builder: (context) => const SecondScreen());
    case AppRouteConstants.third:
      return MaterialPageRoute(builder: (context) => const ThirdScreen());
    default:
      return MaterialPageRoute(builder: (context) => const DefaultScreen());
  }
}

class AppRouteConstants {
  static const String home = '/home ';
  static const String second = '/second';
  static const String third = '/third';
}
