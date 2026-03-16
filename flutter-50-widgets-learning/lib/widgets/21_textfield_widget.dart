import 'package:flutter/material.dart';

class TextfieldWidgetExample extends StatelessWidget {
  const TextfieldWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Widget Example'),
      ),
      body: Padding(
  padding: const EdgeInsets.all(20),
  child: TextField(
    decoration: InputDecoration(
      labelText: 'Enter your name',
      hintText: 'Durgesh',
      prefixIcon: const Icon(Icons.person),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    ),
    keyboardType: TextInputType.name,
    textInputAction: TextInputAction.done,
    onChanged: (value) {},
  ),
),
    );
  }
}
