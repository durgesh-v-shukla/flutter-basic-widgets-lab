import 'package:flutter/material.dart';

class DropdownbuttonWidgetExample extends StatelessWidget {
  const DropdownbuttonWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropdownButton Widget Example'),
      ),
      body: Center(
  child: StatefulBuilder(
    builder: (context, setState) {
      String selected = 'Flutter';
      const items = ['Flutter', 'Dart', 'Firebase'];
      return DropdownButton<String>(
        value: selected,
        items: items
            .map((item) => DropdownMenuItem(value: item, child: Text(item)))
            .toList(),
        onChanged: (value) => setState(() => selected = value ?? selected),
        underline: Container(height: 2, color: Colors.blue),
      );
    },
  ),
),
    );
  }
}
