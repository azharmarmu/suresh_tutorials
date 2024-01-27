import 'package:flutter/material.dart';

import '../pages/error_page.dart';
import '../pages/home_page.dart';

Route<dynamic>? appRoutes(RouteSettings settings) {
  switch (settings.name) {
    case AppRouteNames.home:
      return MaterialPageRoute(
        builder: (context) => HomePage(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const ErrorPage(),
      );
  }
}

class AppRouteNames {
  static const String home = '/';
}
