import 'package:flutter/material.dart';

import 'widgets/listview_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.85),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: false,
        title: Expanded(child: Text('Title')),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      // body: ColumnWidget(),
      body: ListViewBuilderExample(),
    );
  }
}
