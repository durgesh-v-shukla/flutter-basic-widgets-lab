import 'package:flutter/material.dart';

class FloatingactionbuttonWidgetExample extends StatelessWidget {
  const FloatingactionbuttonWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButton Widget Example'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("FloatingActionButton pressed")),
          );
        },
        tooltip: "Create",
        backgroundColor: Colors.deepOrange,
        child: const Icon(Icons.add),
      ),
      body: const Center(
        child: Text('Use bottom-right button to trigger action'),
      ),
    );
  }
}
