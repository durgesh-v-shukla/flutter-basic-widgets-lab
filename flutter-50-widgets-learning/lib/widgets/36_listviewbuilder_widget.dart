import 'package:flutter/material.dart';

class ListviewbuilderWidgetExample extends StatelessWidget {
  const ListviewbuilderWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.builder Widget Example'),
      ),
      body: ListView.builder(
  itemCount: 20,
  itemBuilder: (context, index) {
    return ListTile(
      leading: CircleAvatar(child: Text('')),
      title: Text('Dynamic Item '),
      subtitle: const Text('Generated lazily with itemBuilder'),
    );
  },
),
    );
  }
}
