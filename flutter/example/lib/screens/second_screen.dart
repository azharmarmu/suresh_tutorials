import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: const Center(
        child: Text('Second Screen'),
      ),
    );
  }
}

//Navigator.push(context, PageRoute(builder: (context)=> PageName()))
//Navigator.pop(context)  or Navigator.of(context).pop()
//Navigator.canPop

//
