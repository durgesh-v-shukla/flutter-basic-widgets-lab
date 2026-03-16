import 'package:flutter/material.dart';

class GridviewWidgetExample extends StatelessWidget {
  const GridviewWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Widget Example'),
      ),
      body: GridView.builder(
  padding: const EdgeInsets.all(12),
  itemCount: 12,
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    crossAxisSpacing: 8,
    mainAxisSpacing: 8,
  ),
  itemBuilder: (context, index) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.teal[(index % 9 + 1) * 100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(''),
    );
  },
),
    );
  }
}
