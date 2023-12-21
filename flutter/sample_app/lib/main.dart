import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
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
            onPressed: (){
              //logic
              print('I have clicked');
            },
            child: Text('Click me'),
          ),
        ],
      ),
    ),
  )); //
}


//MaterialApp -> Theme
//Scaffold -> Page Widget
//AppBar -> Top of the app
//Text -> to show some text
//Container ->
//Column -> Align widget vertically
//TextButton -> button with action