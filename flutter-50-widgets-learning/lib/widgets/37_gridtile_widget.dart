import 'package:flutter/material.dart';

class GridtileWidgetExample extends StatelessWidget {
  const GridtileWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridTile Widget Example'),
      ),
      body: GridView.count(
  crossAxisCount: 2,
  padding: const EdgeInsets.all(12),
  children: List.generate(4, (index) {
    return GridTile(
      header: Container(
        color: Colors.black54,
        padding: const EdgeInsets.all(4),
        child: Text('Header ', style: const TextStyle(color: Colors.white)),
      ),
      footer: Container(
        color: Colors.black54,
        padding: const EdgeInsets.all(4),
        child: Text('Footer ', style: const TextStyle(color: Colors.white)),
      ),
      child: Container(color: Colors.blue[(index + 4) * 100]),
    );
  }),
),
    );
  }
}
