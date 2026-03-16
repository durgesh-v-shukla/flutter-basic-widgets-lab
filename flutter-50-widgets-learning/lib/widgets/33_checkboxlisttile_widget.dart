import 'package:flutter/material.dart';

class CheckboxlisttileWidgetExample extends StatelessWidget {
  const CheckboxlisttileWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckboxListTile Widget Example'),
      ),
      body: Center(
  child: StatefulBuilder(
    builder: (context, setState) {
      bool value = false;
      return CheckboxListTile(
        value: value,
        onChanged: (newValue) => setState(() => value = newValue ?? false),
        title: const Text('Enable dark mode'),
        subtitle: const Text('Demonstrates title + subtitle + checkbox'),
        secondary: const Icon(Icons.dark_mode),
      );
    },
  ),
),
    );
  }
}
