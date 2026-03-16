import 'package:flutter/material.dart';

class PaddingWidgetExample extends StatelessWidget {
  const PaddingWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding Widget Example'),
      ),
      body: const Padding(
  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
  child: ColoredBox(
    color: Colors.amber,
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Text('Padding creates inner spacing too'),
    ),
  ),
),
    );
  }
}
