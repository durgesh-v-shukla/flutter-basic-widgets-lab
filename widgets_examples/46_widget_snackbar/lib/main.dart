import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('SnackBar Lab')),
        body: Builder(
          builder: (context) => Center(
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('This is a Snackbar')));
              },
              child: const Text('Show SnackBar'),
            ),
          ),
        ),
      ),
    );
  }
}
