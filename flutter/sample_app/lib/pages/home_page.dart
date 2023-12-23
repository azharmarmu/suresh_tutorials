import 'package:flutter/material.dart';
import 'package:sample_app/pages/widgets/row_widget.dart';

import 'widgets/column_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text('Title'),
      ),
      // body: ColumnWidget(),
      body: ColoredBox(
        color: Colors.black12,
        child: ColumnWidget(),
      ),
    );
  }
}
