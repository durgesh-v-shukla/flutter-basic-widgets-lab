import 'package:flutter/material.dart';

class DropdownbuttonWidgetExample extends StatefulWidget {
  const DropdownbuttonWidgetExample({super.key});

  @override
  State<DropdownbuttonWidgetExample> createState() => _DropdownbuttonWidgetExampleState();
}

class _DropdownbuttonWidgetExampleState extends State<DropdownbuttonWidgetExample> {
  String selected = 'Flutter';
  final List<String> items = const ['Flutter', 'Dart', 'Firebase'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropdownButton Widget Example'),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: selected,
          items: items
              .map((item) => DropdownMenuItem(value: item, child: Text(item)))
              .toList(),
          onChanged: (value) => setState(() => selected = value ?? selected),
          underline: Container(height: 2, color: Colors.blue),
        ),
      ),
    );
  }
}
