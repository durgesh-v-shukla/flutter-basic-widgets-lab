import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('TextFormField Lab')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: TextFormField(
              decoration: const InputDecoration(labelText: 'Username Validation'),
              validator: (value) {
                if (value == null || value.isEmpty) { return 'Please enter text'; }
                return null;
              },
            ),
          ),
        ),
      ),
    );
  }
}
