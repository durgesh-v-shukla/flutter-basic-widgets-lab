import 'package:flutter/material.dart';

class TextbuttonWidgetExample extends StatelessWidget {
  const TextbuttonWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextButton Widget Example'),
      ),
      body: Center(
  child: TextButton(
    onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('TextButton pressed')),
      );
    },
    style: TextButton.styleFrom(
      foregroundColor: Colors.deepPurple,
      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    ),
    child: const Text('Tap TextButton'),
  ),
),
    );
  }
}
