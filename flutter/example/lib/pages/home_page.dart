import 'package:flutter/material.dart';
import 'package:whatsapp/pages/widgets/play_area.dart';

import '../utils/app_strings.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appName),
        centerTitle: true,
      ),
      body: const Center(
        child: PlayArea(),
      ),
    );
  }
}
