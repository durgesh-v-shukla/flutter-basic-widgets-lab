import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Container Lab')),
        body: Center(
          child: Container(
            width: 200, height: 200,
            decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(20), border: Border.all(width: 5)),
            child: const Center(child: Text('Styled Container')),
          ),
        ),
      ),
    );
  }
}
