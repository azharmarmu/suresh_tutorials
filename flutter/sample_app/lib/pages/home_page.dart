import 'package:flutter/material.dart';
import 'widgets/container.dart';
import 'widgets/image_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Title'),
      ),
      // body: ColumnWidget(),
      body: ColoredBox(
        color: Colors.black12,
        child: ContainerWidget(),
      ),
    );
  }
}
