import 'package:flutter/material.dart';

class GridtilebarWidgetExample extends StatelessWidget {
  const GridtilebarWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridTileBar Widget Example'),
      ),
      body: GridView.count(
  crossAxisCount: 2,
  padding: const EdgeInsets.all(12),
  children: List.generate(4, (index) {
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        title: Text('Photo '),
        subtitle: const Text('GridTileBar subtitle'),
        trailing: const Icon(Icons.favorite, color: Colors.white),
      ),
      child: Container(color: Colors.deepPurple[(index + 3) * 100]),
    );
  }),
),
    );
  }
}
