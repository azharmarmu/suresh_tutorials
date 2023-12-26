import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: 300,
          height: 300,
          color: Colors.blue,
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
        ),
        Positioned(
          left: 0,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          left: 0,
          child: RoundContainerWithColor(color: Colors.red),
        ),
        Positioned(
          left: 40,
          child: RoundContainerWithColor(color: Colors.green),
        ),
        Positioned(
          left: 80,
          child: RoundContainerWithColor(color: Colors.blue),
        ),
      ],
    );
  }
}

class RoundContainerWithColor extends StatelessWidget {
  final Color color;
  const RoundContainerWithColor({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: const Icon(
        Icons.person,
        color: Colors.black,
      ),
    );
  }
}
