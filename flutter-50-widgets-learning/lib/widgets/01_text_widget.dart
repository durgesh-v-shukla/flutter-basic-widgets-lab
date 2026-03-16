import 'package:flutter/material.dart';

class TextWidgetExample extends StatelessWidget {
  const TextWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Widget Example'),
      ),
      body: Center(
  child: Text(
    'Flutter Text Widget Example',
    textAlign: TextAlign.center,
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
    style: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
      letterSpacing: 1.5,
    ),
  ),
),
    );
  }
}
