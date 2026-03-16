import 'package:flutter/material.dart';

class SizedBoxWidgetExample extends StatelessWidget {
  const SizedBoxWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedBox Widget Example'),
      ),
      body: const Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text('Above gap'),
    SizedBox(height: 24),
    SizedBox(
      width: 220,
      height: 60,
      child: ColoredBox(color: Colors.lightBlueAccent),
    ),
  ],
),
    );
  }
}
