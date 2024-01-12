import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  bool loginPage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: (loginPage)
          ? Column(
              children: [
                const Text('Login '),
                TextButton(
                    onPressed: () {
                      loginPage = false;
                      setState(() {});
                    },
                    child: const Text('Go to Register'))
              ],
            )
          : Column(
              children: [
                const Text('Register '),
                TextButton(
                  onPressed: () {
                    loginPage = true;
                    setState(() {});
                  },
                  child: const Text('Go to Login'),
                ),
              ],
            ),
    );
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
