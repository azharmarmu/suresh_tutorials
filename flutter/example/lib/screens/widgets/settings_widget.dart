import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Settings',
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
