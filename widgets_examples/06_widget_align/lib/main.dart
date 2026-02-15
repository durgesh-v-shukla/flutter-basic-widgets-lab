import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Align Lab')),
        body: const Align(
          alignment: Alignment.bottomRight,
          child: Text('Aligned to Bottom Right', style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
