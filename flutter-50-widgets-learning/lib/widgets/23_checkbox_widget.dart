import 'package:flutter/material.dart';

class CheckboxWidgetExample extends StatelessWidget {
  const CheckboxWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Widget Example'),
      ),
      body: Center(
  child: StatefulBuilder(
    builder: (context, setState) {
      bool isChecked = false;
      return CheckboxListTile(
        title: const Text('Accept terms'),
        value: isChecked,
        onChanged: (value) => setState(() => isChecked = value ?? false),
        activeColor: Colors.green,
        checkColor: Colors.white,
      );
    },
  ),
),
    );
  }
}
