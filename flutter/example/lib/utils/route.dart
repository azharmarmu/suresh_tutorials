import 'package:flutter/material.dart';
import 'package:whatsapp/screens/second_screen.dart';

import '../screens/home_screen.dart';
import 'app_route_constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRouteConstants.homeScreen:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
        settings: const RouteSettings(name: AppRouteConstants.homeScreen),
      );
    case AppRouteConstants.secondScreen:
      return MaterialPageRoute(
        builder: (context) => const SecondScreen(),
        settings: const RouteSettings(name: AppRouteConstants.secondScreen),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Placeholder(),
        ),
      );
  }
}
