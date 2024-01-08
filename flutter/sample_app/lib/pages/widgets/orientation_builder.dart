import 'package:flutter/material.dart';

import 'box.dart';

class OrientationWidget extends StatelessWidget {
  const OrientationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
      return orientation == Orientation.landscape
          ? const BoxRed()
          : LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                print('Screen width: ${constraints.maxWidth}');
                if (constraints.maxWidth <= 600) {
                  return const BoxBlue(); //login
                } else if (constraints.maxWidth <= 800) {
                  return const Row(
                    children: [
                      BoxBlue(),
                      BoxGreen(),
                    ],
                  );
                } else if (constraints.maxWidth > 800) {
                  return const BoxRed();
                }
                return const SizedBox.shrink();
              },
            );
    });
  }
}
