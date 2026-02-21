import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flexible Lab')),
        body: Row(
          children: [
            Flexible(flex: 1, child: Container(color: Colors.red, height: 50)),
            Flexible(flex: 2, child: Container(color: Colors.green, height: 50)),
          ],
        ),
      ),
    );
  }
}
