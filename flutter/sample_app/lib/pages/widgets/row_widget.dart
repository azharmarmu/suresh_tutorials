import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceAround, //x-axis
      crossAxisAlignment: CrossAxisAlignment.end, //y-axis
      mainAxisSize: MainAxisSize.min, //width resize
      children: [
        IconButton(
          onPressed: () {
            
          },
          icon: Icon(
            Icons.ads_click,
            color: Colors.amber,
          ),
        ),
        Image.network(
          'https://img.freepik.com/free-photo/purple-osteospermum-daisy-flower_1373-16.jpg',
          width: 100,
          height: 100,
        ),
        Chip(label: Text('Tag'))
      ],
    );
  }
}
