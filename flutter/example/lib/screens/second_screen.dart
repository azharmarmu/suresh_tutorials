import 'package:flutter/material.dart';

import '../my_app.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Second Screen'),
        leading: IconButton(
          onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Second Screen'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRouteConstants.third,
                );
              },
              child: const Text('Move to Third Screen'),
            )
          ],
        ),
      ),
    );
  }
}

//Navigator.push(context, PageRoute(builder: (context)=> PageName()))
//Navigator.pop(context)  or Navigator.of(context).pop()
//Navigator.canPop

//
