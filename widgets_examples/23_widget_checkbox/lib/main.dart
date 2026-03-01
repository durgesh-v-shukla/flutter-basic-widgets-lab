import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Checkbox Lab')),
        body: Center(
          child: Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() { isChecked = value!; });
            },
          ),
        ),
      ),
    );
  }
}
