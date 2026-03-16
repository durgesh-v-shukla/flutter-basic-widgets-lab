import 'package:flutter/material.dart';

class IconWidgetExample extends StatelessWidget {
  const IconWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Widget Example'),
      ),
      body: const Center(
  child: Icon(
    Icons.star,
    size: 96,
    color: Colors.teal,
    semanticLabel: 'Flutter logo icon',
  ),
),
    );
  }
}
