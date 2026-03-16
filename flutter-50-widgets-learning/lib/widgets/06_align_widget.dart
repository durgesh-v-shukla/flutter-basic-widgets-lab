import 'package:flutter/material.dart';

class AlignWidgetExample extends StatelessWidget {
  const AlignWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align Widget Example'),
      ),
      body: Align(
  alignment: Alignment.bottomRight,
  child: Container(
    margin: const EdgeInsets.all(20),
    padding: const EdgeInsets.all(12),
    color: Colors.green.shade200,
    child: const Text('Bottom Right'),
  ),
),
    );
  }
}
