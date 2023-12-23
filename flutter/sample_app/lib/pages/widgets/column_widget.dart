import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end, //x-axis
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, //y-axis
      mainAxisSize: MainAxisSize.min, ////height resize
      children: [
        Icon(Icons.location_city),
        Text(
          'World',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w100,
          ),
        ),
        Text(
          '123',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w100,
          ),
        )
      ],
    );
  }
}
