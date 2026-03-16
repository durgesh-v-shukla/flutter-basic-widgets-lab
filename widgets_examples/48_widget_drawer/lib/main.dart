import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Drawer Lab')),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(decoration: BoxDecoration(color: Colors.blue), child: Text('Drawer Header')),
              ListTile(title: Text('Item 1')),
            ],
          ),
        ),
        body: const Center(child: Text('Swipe from left or click menu icon')),
      ),
    );
  }
}
