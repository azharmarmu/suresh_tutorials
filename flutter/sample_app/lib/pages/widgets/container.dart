import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(
        left: 12,
        top: 16,
      ),
      padding: const EdgeInsets.all(20),
      height: 100,
      width: 400,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('asset/images/flower2.webp'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: const Text(
        'Hello',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w800,
        ),
      ),
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

