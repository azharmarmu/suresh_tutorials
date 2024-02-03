import 'package:flutter/material.dart';
import 'package:whatsapp/home_page.dart';

import '../error_page.dart';

class AppRoutes {
  static const String rootPage = '/';
}

Route<dynamic>? appGeneratedRoutes(RouteSettings args) {
  switch (args.name) {
    case AppRoutes.rootPage:
      return MaterialPageRoute(builder: (_) => const HomePage());
    default:
      return MaterialPageRoute(builder: (_) => const ErrorPage());
  }
}
