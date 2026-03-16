import 'package:flutter/material.dart';

class ListtileWidgetExample extends StatelessWidget {
  const ListtileWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile Widget Example'),
      ),
      body: ListView(
  children: const [
    ListTile(
      leading: Icon(Icons.person),
      title: Text('Durgesh'),
      subtitle: Text('Flutter Student'),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
    ),
    Divider(),
    ListTile(
      leading: Icon(Icons.email),
      title: Text('durgesh@example.com'),
      subtitle: Text('Primary Email'),
      trailing: Icon(Icons.check_circle, color: Colors.green),
    ),
  ],
),
    );
  }
}
