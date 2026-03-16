import 'package:flutter/material.dart';

class PopupmenubuttonWidgetExample extends StatelessWidget {
  const PopupmenubuttonWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopupMenuButton Widget Example'),
      ),
      body: Center(
  child: PopupMenuButton<String>(
    tooltip: 'Open menu',
    onSelected: (value) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Selected: ')));
    },
    itemBuilder: (context) => const [
      PopupMenuItem(value: 'Edit', child: Text('Edit')),
      PopupMenuItem(value: 'Share', child: Text('Share')),
      PopupMenuItem(value: 'Delete', child: Text('Delete')),
    ],
    child: const Chip(label: Text('Open Popup Menu')),
  ),
),
    );
  }
}
