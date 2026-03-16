import 'package:flutter/material.dart';

class CenterWidgetExample extends StatelessWidget {
  const CenterWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Center Widget Example'),
      ),
      body: Center(
  child: Container(
    color: Colors.indigo.shade100,
    padding: const EdgeInsets.all(20),
    child: const Text('Centered child widget'),
  ),
),
    );
  }
}
