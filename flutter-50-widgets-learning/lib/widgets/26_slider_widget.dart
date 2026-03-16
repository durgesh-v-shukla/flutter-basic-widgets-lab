import 'package:flutter/material.dart';

class SliderWidgetExample extends StatefulWidget {
  const SliderWidgetExample({super.key});

  @override
  State<SliderWidgetExample> createState() => _SliderWidgetExampleState();
}

class _SliderWidgetExampleState extends State<SliderWidgetExample> {
  double value = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Widget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Slider(
              min: 0,
              max: 100,
              divisions: 20,
              label: value.round().toString(),
              value: value,
              onChanged: (newValue) => setState(() => value = newValue),
            ),
            Text('Selected: ${value.toStringAsFixed(0)}'),
          ],
        ),
      ),
    );
  }
}
