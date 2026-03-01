import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  double sliderVal = 50;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Slider Lab')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Value: \'),
              Slider(
                value: sliderVal, max: 100, divisions: 100, label: sliderVal.round().toString(),
                onChanged: (double value) { setState(() { sliderVal = value; }); },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
