import 'package:flutter/material.dart';

class SwitchWidgetExample extends StatelessWidget {
  const SwitchWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Widget Example'),
      ),
      body: Center(
  child: StatefulBuilder(
    builder: (context, setState) {
      bool enabled = true;
      return SwitchListTile(
        title: const Text('Enable notifications'),
        value: enabled,
        onChanged: (value) => setState(() => enabled = value),
        activeColor: Colors.blue,
      );
    },
  ),
),
    );
  }
}
