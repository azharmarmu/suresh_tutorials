import 'package:flutter/material.dart';
import 'package:whatsapp/my_app.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Third Screen'),
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
            const Text('Third Screen'),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(
                  context,
                  (Route route) {
                    final val = route.settings.name == AppRouteConstants.home;
                    return val;
                  },
                );
              },
              child: const Text('Remove all Routes'),
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
