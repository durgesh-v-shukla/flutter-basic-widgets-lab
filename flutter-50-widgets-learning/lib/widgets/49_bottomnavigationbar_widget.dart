import 'package:flutter/material.dart';

class BottomnavigationbarWidgetExample extends StatelessWidget {
  const BottomnavigationbarWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Widget Example'),
      ),
      body: Center(
  child: StatefulBuilder(
    builder: (context, setState) {
      int current = 0;
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Selected tab: '),
          const SizedBox(height: 20),
          BottomNavigationBar(
            currentIndex: current,
            onTap: (index) => setState(() => current = index),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
        ],
      );
    },
  ),
),
    );
  }
}
