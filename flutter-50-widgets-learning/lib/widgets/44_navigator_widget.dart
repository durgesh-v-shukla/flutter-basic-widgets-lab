import 'package:flutter/material.dart';

class NavigatorWidgetExample extends StatelessWidget {
  const NavigatorWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator Widget Example'),
      ),
      body: Center(
  child: ElevatedButton(
    onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: const Text('Second Screen')),
            body: const Center(child: Text('Navigated using Navigator.push')),
          ),
        ),
      );
    },
    child: const Text('Go to Next Screen'),
  ),
),
    );
  }
}
