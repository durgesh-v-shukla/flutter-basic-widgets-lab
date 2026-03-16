import 'package:flutter/material.dart';

class ReorderablelistviewWidgetExample extends StatelessWidget {
  const ReorderablelistviewWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReorderableListView Widget Example'),
      ),
      body: ReorderableListView(
  padding: const EdgeInsets.all(12),
  onReorder: (oldIndex, newIndex) {},
  children: List.generate(
    8,
    (index) => ListTile(
      key: ValueKey(index),
      leading: const Icon(Icons.drag_handle),
      title: Text('Drag Item '),
      subtitle: const Text('Reordering callback shown in onReorder'),
    ),
  ),
),
    );
  }
}
