import 'package:flutter/material.dart';

class WrapWidgetExample extends StatelessWidget {
  const WrapWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Widget Example'),
      ),
      body: Padding(
  padding: const EdgeInsets.all(16),
  child: Wrap(
    spacing: 10,
    runSpacing: 10,
    alignment: WrapAlignment.center,
    children: List.generate(
      12,
      (index) => Chip(
        label: Text('Tag '),
        avatar: const Icon(Icons.tag, size: 16),
      ),
    ),
  ),
),
    );
  }
}
