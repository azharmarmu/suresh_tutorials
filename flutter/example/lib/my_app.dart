import 'package:flutter/material.dart';

import 'utils/app_route_constants.dart';
import 'utils/route.dart';

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


