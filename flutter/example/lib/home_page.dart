import 'package:flutter/material.dart';

import 'networks/app_network.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getApi('/todos/1'),
        builder: (_, snaps) {
          if (snaps.connectionState == ConnectionState.done) {
            if (snaps.data != null) {
              Map<String, dynamic> data = snaps.data!;
              return Center(
                child: Column( //ListView
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('UserId: ${data['userId']}'),
                    Text('ID: ${data['id']}'),
                    Text('Title: ${data['title']}'),
                    Text('Completed: ${data['completed']}'),
                  ],
                ),
              );
            }
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
