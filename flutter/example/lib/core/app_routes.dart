import 'package:flutter/material.dart';

import '../presentation/ui/default/default_screen.dart';
import '../presentation/ui/home/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRouteConstants.home:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
        settings: const RouteSettings(name: AppRouteConstants.home),
      );

    case AppRouteConstants.postDetail:
      return MaterialPageRoute(
        builder: (context) => const PostDetail(settings.arguments),
        settings: const RouteSettings(name: AppRouteConstants.home),
      );

    default:
      return MaterialPageRoute(builder: (context) => const DefaultScreen());
  }
}

class AppRouteConstants {
  static const String home = '/';
  static const String postDetail = '/postDetail';
}
