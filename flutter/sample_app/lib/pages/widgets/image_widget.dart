import 'package:flutter/widgets.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Network Image',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 8),
        Image.network(
            'https://img.freepik.com/free-photo/natures-beauty-captured-colorful-flower-close-up-generative-ai_188544-8593.jpg'),
        const Text(
          'Asset Image',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 8),
        Image.asset('asset/images/flowers.jpeg'),
      ],
    );
  }
}
