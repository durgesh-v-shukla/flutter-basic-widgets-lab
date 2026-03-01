import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Radio Lab')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio<int>(
                value: 1, groupValue: selectedValue,
                onChanged: (int? value) { setState(() { selectedValue = value!; }); },
              ),
              const Text('Option 1'),
              Radio<int>(
                value: 2, groupValue: selectedValue,
                onChanged: (int? value) { setState(() { selectedValue = value!; }); },
              ),
              const Text('Option 2'),
            ],
          ),
        ),
      ),
    );
  }
}
