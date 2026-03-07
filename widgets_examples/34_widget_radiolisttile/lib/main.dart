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
        appBar: AppBar(title: const Text('RadioListTile Lab')),
        body: Column(
          children: [
            RadioListTile<int>(
              title: const Text('Apple'), value: 1, groupValue: selectedValue,
              onChanged: (int? val) { setState(() { selectedValue = val!; }); },
            ),
            RadioListTile<int>(
              title: const Text('Banana'), value: 2, groupValue: selectedValue,
              onChanged: (int? val) { setState(() { selectedValue = val!; }); },
            ),
          ],
        ),
      ),
    );
  }
}
