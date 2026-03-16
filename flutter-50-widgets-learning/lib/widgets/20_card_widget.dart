import 'package:flutter/material.dart';

class CardWidgetExample extends StatelessWidget {
  const CardWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget Example'),
      ),
      body: Center(
  child: Card(
    elevation: 6,
    margin: const EdgeInsets.all(20),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    child: const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.school, size: 40, color: Colors.indigo),
          SizedBox(height: 10),
          Text('Card Widget Example', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    ),
  ),
),
    );
  }
}
