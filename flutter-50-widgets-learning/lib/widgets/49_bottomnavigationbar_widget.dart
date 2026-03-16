import 'package:flutter/material.dart';

class BottomnavigationbarWidgetExample extends StatefulWidget {
  const BottomnavigationbarWidgetExample({super.key});

  @override
  State<BottomnavigationbarWidgetExample> createState() => _BottomnavigationbarWidgetExampleState();
}

class _BottomnavigationbarWidgetExampleState extends State<BottomnavigationbarWidgetExample> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Widget Example'),
      ),
      body: Center(
        child: Text('Selected tab index: $current'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        onTap: (index) => setState(() => current = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
