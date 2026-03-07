import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('GridTileBar Lab')),
        body: Center(
          child: Container(
            width: 300, height: 100,
            color: Colors.grey[200],
            child: const GridTileBar(
              backgroundColor: Colors.deepPurple,
              title: Text('Title'),
              subtitle: Text('Subtitle'),
              leading: Icon(Icons.star),
              trailing: Icon(Icons.more_vert),
            ),
          ),
        ),
      ),
    );
  }
}
