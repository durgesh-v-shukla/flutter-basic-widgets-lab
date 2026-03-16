import 'package:flutter/material.dart';

class CircularprogressWidgetExample extends StatelessWidget {
  const CircularprogressWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CircularProgressIndicator Widget Example'),
      ),
      body: const Center(
  child: CircularProgressIndicator(
    backgroundColor: Colors.black12,
    color: Colors.blue,
    strokeWidth: 6,
    value: null,
  ),
),
    );
  }
}
