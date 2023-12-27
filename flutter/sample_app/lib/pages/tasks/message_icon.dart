import 'package:flutter/material.dart';

class MessageIconWidget extends StatelessWidget {
  const MessageIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          const Icon(
            Icons.message,
            size: 80,
            color: Colors.green,
          ),
          Container(
            alignment: Alignment.center,
            height: 24,
            width: 24,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: const Text(
              '24',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white
              ),
            ),
          )
        ],
      ),
    );
  }
}
