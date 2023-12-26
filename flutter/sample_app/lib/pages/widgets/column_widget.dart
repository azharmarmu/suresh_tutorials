import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end, //x-axis
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //y-axis
        mainAxisSize: MainAxisSize.min, ////height resize
        children: [
          const Icon(Icons.location_city),
          const Text(
            'World',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w100,
            ),
          ),
          const Text(
            '123',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w100,
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
