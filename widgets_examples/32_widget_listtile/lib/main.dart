import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ListTile Widget Lab')),
        body: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('John Doe'),
              subtitle: Text('Developer'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
