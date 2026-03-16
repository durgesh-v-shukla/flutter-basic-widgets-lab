import 'package:flutter/material.dart';

class FlexibleWidgetExample extends StatelessWidget {
  const FlexibleWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible Widget Example'),
      ),
      body: const Column(
  children: [
    SizedBox(height: 16),
    Text('Flexible shares space but allows loose fit'),
    SizedBox(height: 12),
    Row(
      children: [
        Flexible(fit: FlexFit.tight, child: ColoredBox(color: Colors.purple, child: SizedBox(height: 80))),
        SizedBox(width: 8),
        Flexible(fit: FlexFit.loose, child: ColoredBox(color: Colors.orange, child: SizedBox(height: 80, width: 100))),
      ],
    ),
  ],
),
    );
  }
}
