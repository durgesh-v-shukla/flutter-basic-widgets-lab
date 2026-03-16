import 'package:flutter/material.dart';

class SnackbarWidgetExample extends StatelessWidget {
  const SnackbarWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar Widget Example'),
      ),
      body: Center(
  child: ElevatedButton(
    onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('This is a SnackBar message'),
          duration: const Duration(seconds: 2),
          action: SnackBarAction(label: 'UNDO', onPressed: () {}),
        ),
      );
    },
    child: const Text('Show SnackBar'),
  ),
),
    );
  }
}
