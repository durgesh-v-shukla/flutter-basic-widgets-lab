import 'package:flutter/material.dart';

class SinglechildscrollviewWidgetExample extends StatelessWidget {
  const SinglechildscrollviewWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollView Widget Example'),
      ),
      body: SingleChildScrollView(
  padding: const EdgeInsets.all(16),
  child: Column(
    children: List.generate(
      20,
      (index) => Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(14),
        color: Colors.blue[(index % 9 + 1) * 100],
        child: Text('Scrollable item '),
      ),
    ),
  ),
),
    );
  }
}
