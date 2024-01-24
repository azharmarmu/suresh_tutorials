import 'package:flutter/material.dart';
import 'package:whatsapp/utils/app_route_constants.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Home',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          ElevatedButton.icon(
            onPressed: () => Navigator.pushNamed(
              context,
              AppRouteConstants.secondScreen,
            ),
            icon: const Icon(Icons.route),
            label: const Text('Move to Screen2'),
          ),
        ],
      ),
    );
  }
}
