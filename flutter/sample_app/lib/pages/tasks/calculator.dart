import 'package:flutter/material.dart';

class CalculatorWidget extends StatelessWidget {
  const CalculatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CalculatorInputWidget(
              label: 'C',
              labelColor: Colors.black,
              bgColor: Colors.grey.shade500,
            ),
            const SizedBox(width: 4),
            CalculatorInputWidget(
              label: '+/-',
              labelColor: Colors.black,
              bgColor: Colors.grey.shade500,
            ),
            const SizedBox(width: 4),
            CalculatorInputWidget(
              label: '%',
              labelColor: Colors.black,
              bgColor: Colors.grey.shade500,
            ),
            const SizedBox(width: 4),
            const CalculatorInputWidget(
              label: '/',
              bgColor: Color(0xFFEFA92B),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CalculatorInputWidget(
              label: '7',
            ),
            SizedBox(width: 4),
            CalculatorInputWidget(
              label: '8',
            ),
            SizedBox(width: 4),
            CalculatorInputWidget(
              label: '9',
            ),
            SizedBox(width: 4),
            CalculatorInputWidget(
              label: 'X',
              bgColor: Color(0xFFEFA92B),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CalculatorInputWidget(
              label: '4',
            ),
            SizedBox(width: 4),
            CalculatorInputWidget(
              label: '5',
            ),
            SizedBox(width: 4),
            CalculatorInputWidget(
              label: '6',
            ),
            SizedBox(width: 4),
            CalculatorInputWidget(
              label: '-',
              bgColor: Color(0xFFEFA92B),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CalculatorInputWidget(
              label: '1',
            ),
            SizedBox(width: 4),
            CalculatorInputWidget(
              label: '2',
            ),
            SizedBox(width: 4),
            CalculatorInputWidget(
              label: '3',
            ),
            SizedBox(width: 4),
            CalculatorInputWidget(
              label: '+',
              bgColor: Color(0xFFEFA92B),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 80,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(80 / 2),
              ),
              child: const Text(
                '0',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 4),
            const Row(
              children: [
                CalculatorInputWidget(
                  label: '.',
                ),
                SizedBox(width: 4),
                CalculatorInputWidget(
                  label: '=',
                  bgColor: Color(0xFFEFA92B),
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}

class CalculatorInputWidget extends StatelessWidget {
  final Color bgColor;
  final String label;
  final Color labelColor;
  const CalculatorInputWidget({
    super.key,
    required this.label,
    this.bgColor = Colors.black87,
    this.labelColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: bgColor,
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 24,
          color: labelColor,
        ),
      ),
    );
  }
}
