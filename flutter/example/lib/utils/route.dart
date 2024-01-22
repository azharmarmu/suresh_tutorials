import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import 'app_route_constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRouteConstants.home:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
        settings: const RouteSettings(name: AppRouteConstants.home),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Placeholder(),
        ),
      );
  }
}
