import 'package:flutter/material.dart';

class RadioWidgetExample extends StatefulWidget {
  const RadioWidgetExample({super.key});

  @override
  State<RadioWidgetExample> createState() => _RadioWidgetExampleState();
}

class _RadioWidgetExampleState extends State<RadioWidgetExample> {
  String selected = 'A';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Widget Example'),
      ),
      body: Center(
        child: Column(
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
        ),
      ),
    );
  }
}
