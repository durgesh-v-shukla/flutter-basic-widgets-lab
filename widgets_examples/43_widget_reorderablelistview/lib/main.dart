import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  final List<int> _items = List<int>.generate(10, (int index) => index);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ReorderableListView Lab')),
        body: ReorderableListView(
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              if (oldIndex < newIndex) { newIndex -= 1; }
              final int item = _items.removeAt(oldIndex);
              _items.insert(newIndex, item);
            });
          },
          children: <Widget>[
            for (int index = 0; index < _items.length; index += 1)
              ListTile(key: Key('\'), title: Text('Item \')),
          ],
        ),
      ),
    );
  }
}
