import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Chat',
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
