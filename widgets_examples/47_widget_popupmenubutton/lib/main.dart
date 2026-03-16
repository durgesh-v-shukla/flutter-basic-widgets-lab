import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PopupMenuButton Lab'),
          actions: [
            PopupMenuButton<String>(
              onSelected: (value) {},
              itemBuilder: (BuildContext context) {
                return {'A', 'B', 'C'}.map((String choice) {
                  return PopupMenuItem<String>(value: choice, child: Text(choice));
                }).toList();
              },
            ),
          ],
        ),
        body: const Center(child: Text('Click menu in upper right')),
      ),
    );
  }
}
