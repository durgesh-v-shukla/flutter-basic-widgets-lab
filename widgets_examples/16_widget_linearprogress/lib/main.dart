import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('LinearProgress Lab')),
        body: const Center(
          child: Padding(padding: EdgeInsets.all(20.0), child: LinearProgressIndicator()),
        ),
      ),
    );
  }
}
