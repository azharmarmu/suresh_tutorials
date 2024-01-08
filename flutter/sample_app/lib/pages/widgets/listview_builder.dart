import 'package:flutter/material.dart';

class ListViewBuilderExample extends StatelessWidget {
  const ListViewBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return  ListTile(
          leading: Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('asset/images/flowers.jpeg'),
              ),
            ),
          ),
          title: Text('Suresh '),
          subtitle: Text('last message'),
          trailing: Text('9:27 AM'),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
      itemCount: 10,
    );
  }
}

// ListView vs ListView.Builder/ListView.Separated