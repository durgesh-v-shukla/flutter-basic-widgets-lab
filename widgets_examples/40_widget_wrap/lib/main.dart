import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Wrap Lab')),
        body: Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: List.generate(15, (index) => Chip(label: Text('Chip \'))),
        ),
      ),
    );
  }
}
