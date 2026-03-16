import 'package:flutter/material.dart';

class RadiolisttileWidgetExample extends StatefulWidget {
  const RadiolisttileWidgetExample({super.key});

  @override
  State<RadiolisttileWidgetExample> createState() => _RadiolisttileWidgetExampleState();
}

class _RadiolisttileWidgetExampleState extends State<RadiolisttileWidgetExample> {
  String selected = 'Light';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RadioListTile Widget Example'),
      ),
      body: Center(
        child: Column(
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
        ),
      ),
    );
  }
}
