import 'package:flutter/material.dart';
import 'package:sample_app/pages/tasks/calculator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.85),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Title'),
      ),
      // body: ColumnWidget(),
      body: const CalculatorWidget(),
    );
  }
}
