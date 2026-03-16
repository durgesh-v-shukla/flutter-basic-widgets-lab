import 'package:flutter/material.dart';

class TextformfieldWidgetExample extends StatelessWidget {
  const TextformfieldWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextFormField Widget Example'),
      ),
      body: Padding(
  padding: const EdgeInsets.all(20),
  child: TextFormField(
    decoration: InputDecoration(
      labelText: 'Email',
      hintText: 'you@example.com',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      suffixIcon: const Icon(Icons.mail),
    ),
    keyboardType: TextInputType.emailAddress,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    validator: (value) {
      if (value == null || !value.contains('@')) {
        return 'Enter a valid email';
      }
      return null;
    },
  ),
),
    );
  }
}
