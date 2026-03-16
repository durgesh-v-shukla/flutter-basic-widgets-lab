import 'package:flutter/material.dart';

class IconbuttonWidgetExample extends StatelessWidget {
  const IconbuttonWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IconButton Widget Example'),
      ),
      body: Center(
  child: IconButton(
    onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('IconButton tapped')),
      );
    },
    icon: const Icon(Icons.favorite),
    color: Colors.pink,
    iconSize: 42,
    tooltip: 'Favorite action',
  ),
),
    );
  }
}
