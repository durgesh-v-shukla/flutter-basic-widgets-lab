import 'package:flutter/material.dart';

class DaterangepickerWidgetExample extends StatelessWidget {
  const DaterangepickerWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DateRangePicker Widget Example'),
      ),
      body: Center(
  child: ElevatedButton(
    onPressed: () async {
      final range = await showDateRangePicker(
        context: context,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
      );
      if (range != null && context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('From  to ')),
        );
      }
    },
    child: const Text('Pick Date Range'),
  ),
),
    );
  }
}
