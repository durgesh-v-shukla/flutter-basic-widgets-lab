import 'package:flutter/material.dart';

class DatepickerWidgetExample extends StatelessWidget {
  const DatepickerWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DatePicker Widget Example'),
      ),
      body: Center(
  child: ElevatedButton(
    onPressed: () async {
      final selectedDate = await showDatePicker(
        context: context,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
        initialDate: DateTime.now(),
      );
      if (selectedDate != null && context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Selected: ')),
        );
      }
    },
    child: const Text('Pick Date'),
  ),
),
    );
  }
}
