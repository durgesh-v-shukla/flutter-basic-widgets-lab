import 'package:flutter/material.dart';

class ExpandedWidgetExample extends StatelessWidget {
  const ExpandedWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Widget Example'),
      ),
      body: const Column(
  children: [
    SizedBox(height: 16),
    Text('Expanded takes remaining space in Flex widgets'),
    SizedBox(height: 12),
    Row(
      children: [
        Expanded(flex: 2, child: ColoredBox(color: Colors.red, child: SizedBox(height: 80))),
        SizedBox(width: 8),
        Expanded(flex: 1, child: ColoredBox(color: Colors.blue, child: SizedBox(height: 80))),
      ],
    ),
  ],
),
    );
  }
}
