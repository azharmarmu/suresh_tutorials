import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        left: 12,
        top: 16,
      ),
      padding: const EdgeInsets.all(20),
      height: 100,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.black,
        ),

      ),
      child: Text('Hello'),
    );
  }
}

//SizedBox
//padding
//margin
//align
//Decoration
//ColoredBox
//CircleRRect

