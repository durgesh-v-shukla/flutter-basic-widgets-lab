import 'package:flutter/material.dart';

class PositionedWidgetExample extends StatelessWidget {
  const PositionedWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Positioned Widget Example'),
      ),
      body: Center(
  child: SizedBox(
    width: 260,
    height: 220,
    child: Stack(
      children: [
        Positioned.fill(child: Container(color: Colors.orange.shade100)),
        const Positioned(top: 8, left: 8, child: Chip(label: Text('Top Left'))),
        const Positioned(bottom: 8, right: 8, child: Chip(label: Text('Bottom Right'))),
      ],
    ),
  ),
),
    );
  }
}
