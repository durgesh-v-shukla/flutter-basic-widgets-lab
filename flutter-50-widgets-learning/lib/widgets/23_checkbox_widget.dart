import 'package:flutter/material.dart';

class CheckboxWidgetExample extends StatefulWidget {
  const CheckboxWidgetExample({super.key});

  @override
  State<CheckboxWidgetExample> createState() => _CheckboxWidgetExampleState();
}

class _CheckboxWidgetExampleState extends State<CheckboxWidgetExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Widget Example'),
      ),
      body: Center(
        child: CheckboxListTile(
          title: const Text('Accept terms'),
          value: isChecked,
          onChanged: (value) => setState(() => isChecked = value ?? false),
          activeColor: Colors.green,
          checkColor: Colors.white,
        ),
      ),
    );
  }
}
