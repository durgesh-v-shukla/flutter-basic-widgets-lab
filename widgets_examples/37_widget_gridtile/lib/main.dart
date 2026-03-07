import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('GridTile Lab')),
        body: Center(
          child: SizedBox(
            width: 200, height: 200,
            child: GridTile(
              header: const GridTileBar(backgroundColor: Colors.black45, title: Text('Header')),
              footer: const GridTileBar(backgroundColor: Colors.black45, title: Text('Footer')),
              child: Container(color: Colors.blue[300]),
            ),
          ),
        ),
      ),
    );
  }
}
