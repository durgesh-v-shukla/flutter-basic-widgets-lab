import 'package:flutter/material.dart';

class LinearprogressWidgetExample extends StatelessWidget {
  const LinearprogressWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LinearProgressIndicator Widget Example'),
      ),
      body: const Padding(
  padding: EdgeInsets.all(24),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      LinearProgressIndicator(
        minHeight: 10,
        value: 0.7,
        color: Colors.green,
        backgroundColor: Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      SizedBox(height: 12),
      Text('70% completed'),
    ],
  ),
),
    );
  }
}
