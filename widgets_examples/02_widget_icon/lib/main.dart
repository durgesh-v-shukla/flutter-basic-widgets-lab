import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Icon Widget Lab')),
        body: const Center(
          child: Icon(Icons.favorite, size: 100, color: Colors.red),
        ),
      ),
    );
  }
}
