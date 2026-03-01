import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Switch Lab')),
        body: Center(
          child: Switch(
            value: isSwitched,
            onChanged: (bool value) {
              setState(() { isSwitched = value; });
            },
          ),
        ),
      ),
    );
  }
}
