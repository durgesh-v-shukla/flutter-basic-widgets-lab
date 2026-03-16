import 'package:flutter/material.dart';

class SwitchWidgetExample extends StatefulWidget {
  const SwitchWidgetExample({super.key});

  @override
  State<SwitchWidgetExample> createState() => _SwitchWidgetExampleState();
}

class _SwitchWidgetExampleState extends State<SwitchWidgetExample> {
  bool enabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Widget Example'),
      ),
      body: Center(
        child: SwitchListTile(
          title: const Text('Enable notifications'),
          value: enabled,
          onChanged: (value) => setState(() => enabled = value),
          activeColor: Colors.blue,
        ),
      ),
    );
  }
}
