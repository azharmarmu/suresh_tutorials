import 'package:flutter/material.dart';
import 'package:whatsapp/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    print('CreateState');
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  late int count = 0;

  Color boxColor = Colors.red;

  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Text('$count'),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecondScreen(),
                ),
              );
            },
            child: const Text('Move to Second Screen'),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {}); //rebuild the ui
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }
}

class Box extends StatelessWidget {
  final Color color;
  const Box({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 200,
      color: color,
    );
  }
}
