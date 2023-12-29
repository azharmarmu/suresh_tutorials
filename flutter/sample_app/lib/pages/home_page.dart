import 'package:flutter/material.dart';
import 'package:sample_app/pages/tasks/calculator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.85),
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   centerTitle: true,
      //   title: const Text('Title'),
      // ),
      // body: ColumnWidget(),
      body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
        return orientation == Orientation.landscape
            ? const CalculatorWidget()
            : LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  print('Screen width: ${constraints.maxWidth}');
                  if (constraints.maxWidth <= 600) {
                    return Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    );
                  } else if (constraints.maxWidth <= 800) {
                    return Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                    );
                  } else if (constraints.maxWidth > 800) {
                    return Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                    );
                  }
                  return const SizedBox.shrink();
                },
              );
      }),
    );
  }
}
