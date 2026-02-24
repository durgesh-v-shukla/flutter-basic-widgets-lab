import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Tooltip Lab')),
        body: const Center(
          child: Tooltip(
            message: 'I am a Tooltip',
            child: Icon(Icons.info, size: 50),
          ),
        ),
      ),
    );
  }
}
