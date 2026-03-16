import 'package:flutter/material.dart';

class TimepickerWidgetExample extends StatelessWidget {
  const TimepickerWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TimePicker Widget Example'),
      ),
      body: Center(
  child: ElevatedButton(
    onPressed: () async {
      final picked = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );
      if (picked != null && context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Selected time: ')),
        );
      }
    },
    child: const Text('Pick Time'),
  ),
),
    );
  }
}
