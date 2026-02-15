import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Padding Lab')),
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(color: Colors.blue, child: const Text('Padded Container')),
        ),
      ),
    );
  }
}
