import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
        ),
        body: Column(
          children: [
            Container(
              color: Colors.black,
              child: Text('Hello'),
            ),
            Text('World'),
            Text('Next'),
            ElevatedButton(
              onPressed: () {
                //logic
                print('I have clicked');
              },
              child: const Text('Click me'),
            ),
          ],
        ),
      ),
    );
  }
}
