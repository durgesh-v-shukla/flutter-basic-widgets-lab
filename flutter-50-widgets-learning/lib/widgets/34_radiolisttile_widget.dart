import 'package:flutter/material.dart';

class RadiolisttileWidgetExample extends StatelessWidget {
  const RadiolisttileWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RadioListTile Widget Example'),
      ),
      body: Center(
  child: StatefulBuilder(
    builder: (context, setState) {
      String selected = 'Light';
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RadioListTile<String>(
            title: const Text('Light Theme'),
            value: 'Light',
            groupValue: selected,
            onChanged: (value) => setState(() => selected = value ?? selected),
          ),
          RadioListTile<String>(
            title: const Text('Dark Theme'),
            value: 'Dark',
            groupValue: selected,
            onChanged: (value) => setState(() => selected = value ?? selected),
          ),
        ],
      );
    },
  ),
),
    );
  }
}
