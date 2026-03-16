import 'package:flutter/material.dart';

class StackWidgetExample extends StatelessWidget {
  const StackWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Widget Example'),
      ),
      body: Center(
  child: Stack(
    alignment: Alignment.center,
    children: [
      Container(width: 240, height: 240, color: Colors.blue.shade100),
      Container(width: 180, height: 180, color: Colors.blue.shade300),
      Container(width: 120, height: 120, color: Colors.blue.shade700),
      const Text('Stack Layers', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    ],
  ),
),
    );
  }
}
