import 'package:flutter/material.dart';

class SpacerWidgetExample extends StatelessWidget {
  const SpacerWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spacer Widget Example'),
      ),
      body: const Row(
  children: [
    SizedBox(width: 8),
    Icon(Icons.home),
    Spacer(flex: 2),
    Text('Centered by Spacer'),
    Spacer(),
    Icon(Icons.person),
    SizedBox(width: 8),
  ],
),
    );
  }
}
