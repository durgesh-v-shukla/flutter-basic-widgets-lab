import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DatePicker Lab')),
        body: Builder(
          builder: (context) => Center(
            child: ElevatedButton(
              onPressed: () async {
                await showDatePicker(
                  context: context, initialDate: DateTime.now(),
                  firstDate: DateTime(2000), lastDate: DateTime(2030),
                );
              },
              child: const Text('Show Date Picker'),
            ),
          ),
        ),
      ),
    );
  }
}
