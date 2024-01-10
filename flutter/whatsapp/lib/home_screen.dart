import 'package:flutter/material.dart';

import 'fake_whatsapp_home_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF008C72),
        title: const Text('WhatsApp'),
        centerTitle: false,
        actions: const [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 4),
          Icon(Icons.search),
          SizedBox(width: 4),
          Icon(Icons.more_vert),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        itemBuilder: (_, int index) => Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(45 / 2),
              child: Image.network(
                fakeData[index]['image_url'],
                width: 45,
                height: 45,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 4),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(fakeData[index]['title']),
                Text(fakeData[index]['description']),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Text(fakeData[index]['time']),
                if (fakeData[index]['count'] > 0)
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: Text('${fakeData[index]['count']}'),
                  )
              ],
            )
          ],
        ),
        separatorBuilder: (_, int index) => const SizedBox(height: 12),
        itemCount: fakeData.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.message,
        ),
      ),
    );
  }
}
