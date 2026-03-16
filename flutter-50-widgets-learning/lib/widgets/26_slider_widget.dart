import 'package:flutter/material.dart';

class SliderWidgetExample extends StatelessWidget {
  const SliderWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Widget Example'),
      ),
      body: Center(
  child: StatefulBuilder(
    builder: (context, setState) {
      double value = 40;
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Slider(
            min: 0,
            max: 100,
            divisions: 10,
            label: value.round().toString(),
            value: value,
            onChanged: (newValue) => setState(() => value = newValue),
          ),
          Text('Selected: '),
        ],
      );
    },
  ),
),
    );
  }
}
