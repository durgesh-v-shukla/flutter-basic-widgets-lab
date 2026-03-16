import 'package:flutter/material.dart';

class ReorderablelistviewWidgetExample extends StatefulWidget {
  const ReorderablelistviewWidgetExample({super.key});

  @override
  State<ReorderablelistviewWidgetExample> createState() => _ReorderablelistviewWidgetExampleState();
}

class _ReorderablelistviewWidgetExampleState extends State<ReorderablelistviewWidgetExample> {
  final List<String> items = List.generate(8, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReorderableListView Widget Example'),
      ),
      body: ReorderableListView(
        padding: const EdgeInsets.all(12),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        },
        children: [
          for (int i = 0; i < items.length; i++)
            ListTile(
              key: ValueKey(items[i]),
              leading: const Icon(Icons.drag_handle),
              title: Text('Drag ${items[i]}'),
              subtitle: const Text('Reordering callback functioning'),
            ),
        ],
      ),
    );
  }
}
