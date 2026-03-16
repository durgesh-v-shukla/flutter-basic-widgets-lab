import 'package:flutter/material.dart';

class ListviewWidgetExample extends StatelessWidget {
  const ListviewWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Widget Example'),
      ),
      body: ListView(
  padding: const EdgeInsets.all(12),
  children: List.generate(
    8,
    (index) => Card(
      child: ListTile(
        leading: const Icon(Icons.widgets),
        title: Text('Static Item '),
        subtitle: const Text('Built using ListView children property'),
      ),
    ),
  ),
),
    );
  }
}
