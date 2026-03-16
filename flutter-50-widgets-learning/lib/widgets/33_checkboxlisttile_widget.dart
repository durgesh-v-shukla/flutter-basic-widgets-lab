import 'package:flutter/material.dart';

class CheckboxlisttileWidgetExample extends StatefulWidget {
  const CheckboxlisttileWidgetExample({super.key});

  @override
  State<CheckboxlisttileWidgetExample> createState() => _CheckboxlisttileWidgetExampleState();
}

class _CheckboxlisttileWidgetExampleState extends State<CheckboxlisttileWidgetExample> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckboxListTile Widget Example'),
      ),
      body: Center(
        child: CheckboxListTile(
          value: value,
          onChanged: (newValue) => setState(() => value = newValue ?? false),
          title: const Text('Enable dark mode'),
          subtitle: const Text('Demonstrates title + subtitle + checkbox'),
          secondary: const Icon(Icons.dark_mode),
        ),
      ),
    );
  }
}
