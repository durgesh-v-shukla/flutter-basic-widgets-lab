import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('GridView Lab')),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(4, (index) {
            return Center(
              child: Text('Item \', style: Theme.of(context).textTheme.headlineSmall),
            );
          }),
        ),
      ),
    );
  }
}
