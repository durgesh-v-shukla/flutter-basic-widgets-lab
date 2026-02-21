import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Expanded Lab')),
        body: Column(
          children: [
            Container(height: 50, color: Colors.red),
            Expanded(child: Container(color: Colors.green)),
            Container(height: 50, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
