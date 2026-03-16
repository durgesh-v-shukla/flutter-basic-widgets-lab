import 'package:flutter/material.dart';

class RadioWidgetExample extends StatelessWidget {
  const RadioWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Widget Example'),
      ),
      body: Center(
  child: StatefulBuilder(
    builder: (context, setState) {
      String selected = 'A';
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RadioListTile<String>(
            title: const Text('Option A'),
            value: 'A',
            groupValue: selected,
            onChanged: (value) => setState(() => selected = value ?? 'A'),
          ),
          RadioListTile<String>(
            title: const Text('Option B'),
            value: 'B',
            groupValue: selected,
            onChanged: (value) => setState(() => selected = value ?? 'A'),
          ),
        ],
      );
    },
  ),
),
    );
  }
}
