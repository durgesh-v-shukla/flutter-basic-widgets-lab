import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('SingleChildScrollView Lab')),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(30, (index) => Container(
              height: 50,
              width: double.infinity,
              color: index % 2 == 0 ? Colors.blue[100] : Colors.blue[200],
              child: Center(child: Text('Scroll Item \')),
            )),
          ),
        ),
      ),
    );
  }
}
