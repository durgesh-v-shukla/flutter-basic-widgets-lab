import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Positioned Lab')),
        body: Center(
          child: Container(
            width: 300, height: 300, color: Colors.grey[300],
            child: Stack(
              children: const [
                Positioned(bottom: 20, right: 20, child: Text('Bottom Right')),
                Positioned(top: 20, left: 20, child: Text('Top Left')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
