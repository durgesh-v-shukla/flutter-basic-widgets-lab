import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('TimePicker Lab')),
        body: Builder(
          builder: (context) => Center(
            child: ElevatedButton(
              onPressed: () async {
                await showTimePicker(context: context, initialTime: TimeOfDay.now());
              },
              child: const Text('Show Time Picker'),
            ),
          ),
        ),
      ),
    );
  }
}
