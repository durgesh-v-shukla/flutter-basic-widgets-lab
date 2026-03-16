import 'package:flutter/material.dart';

class ElevatedbuttonWidgetExample extends StatelessWidget {
  const ElevatedbuttonWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ElevatedButton Widget Example'),
      ),
      body: Center(
  child: ElevatedButton.icon(
    onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('ElevatedButton clicked')),
      );
    },
    icon: const Icon(Icons.touch_app),
    label: const Text('Elevated Action'),
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      backgroundColor: Colors.indigo,
      foregroundColor: Colors.white,
      elevation: 6,
    ),
  ),
),
    );
  }
}
