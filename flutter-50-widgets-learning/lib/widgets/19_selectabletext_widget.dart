import 'package:flutter/material.dart';

class SelectabletextWidgetExample extends StatelessWidget {
  const SelectabletextWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SelectableText Widget Example'),
      ),
      body: const Padding(
  padding: EdgeInsets.all(20),
  child: SelectableText(
    'You can long-press and copy this text.\nUseful for notes and code snippets.',
    style: TextStyle(fontSize: 18, height: 1.4, color: Colors.black87),
    textAlign: TextAlign.center,
  ),
),
    );
  }
}
