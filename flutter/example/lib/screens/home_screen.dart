import 'package:flutter/material.dart';
import 'package:whatsapp/screens/widgets/chat_widget.dart';
import 'package:whatsapp/screens/widgets/home_widget.dart';
import 'package:whatsapp/screens/widgets/settings_widget.dart';
import 'package:whatsapp/utils/app_strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.welcome),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: const [
          HomeWidget(),
          ChatWidget(),
          SettingsWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index) {
          currentIndex = index; //logic
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          )
        ],
      ),
    );
  }
}
