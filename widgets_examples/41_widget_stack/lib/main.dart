import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stack Lab')),
        body: Center(
          child: Stack(
            children: [
              Container(width: 200, height: 200, color: Colors.blue),
              Container(width: 150, height: 150, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
