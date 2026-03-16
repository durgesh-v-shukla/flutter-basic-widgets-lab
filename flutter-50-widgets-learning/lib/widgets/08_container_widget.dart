import 'package:flutter/material.dart';

class ContainerWidgetExample extends StatelessWidget {
  const ContainerWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Widget Example'),
      ),
      body: Center(
  child: Container(
    width: 220,
    height: 200,
    margin: const EdgeInsets.all(20),
    padding: const EdgeInsets.all(16),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.black, width: 2),
      boxShadow: const [
        BoxShadow(color: Colors.grey, blurRadius: 10, offset: Offset(4, 4)),
      ],
    ),
    child: const Text(
      'Container Widget',
      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
    ),
  ),
),
    );
  }
}
