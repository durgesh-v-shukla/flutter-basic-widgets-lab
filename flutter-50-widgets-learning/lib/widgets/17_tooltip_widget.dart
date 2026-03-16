import 'package:flutter/material.dart';

class TooltipWidgetExample extends StatelessWidget {
  const TooltipWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tooltip Widget Example'),
      ),
      body: const Center(
  child: Tooltip(
    message: 'This icon opens settings',
    waitDuration: Duration(milliseconds: 500),
    showDuration: Duration(seconds: 2),
    child: Icon(Icons.settings, size: 64, color: Colors.blueGrey),
  ),
),
    );
  }
}
