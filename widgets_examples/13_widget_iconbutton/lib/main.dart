import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('IconButton Lab')),
        body: Center(
          child: IconButton(
            icon: const Icon(Icons.thumb_up),
            onPressed: () {},
            color: Colors.blue,
            iconSize: 50,
          ),
        ),
      ),
    );
  }
}
