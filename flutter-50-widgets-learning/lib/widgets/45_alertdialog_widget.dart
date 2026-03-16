import 'package:flutter/material.dart';

class AlertdialogWidgetExample extends StatelessWidget {
  const AlertdialogWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialog Widget Example'),
      ),
      body: Center(
  child: ElevatedButton(
    onPressed: () {
      showDialog<void>(
        context: context,
        builder: (dialogContext) => AlertDialog(
          title: const Text('Delete Item?'),
          content: const Text('AlertDialog shows title, content, and action buttons.'),
          actions: [
            TextButton(onPressed: () => Navigator.pop(dialogContext), child: const Text('Cancel')),
            ElevatedButton(onPressed: () => Navigator.pop(dialogContext), child: const Text('Delete')),
          ],
        ),
      );
    },
    child: const Text('Show AlertDialog'),
  ),
),
    );
  }
}
