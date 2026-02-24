import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('SelectableText Lab')),
        body: const Center(
          child: SelectableText(
            'This text can be selected and copied. Try long-pressing it!',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
