import 'package:flutter/material.dart';

class DrawerWidgetExample extends StatelessWidget {
  const DrawerWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Widget Example'),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo),
              child: Text("Drawer Header", style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Home")),
            ListTile(leading: Icon(Icons.settings), title: Text("Settings")),
            ListTile(leading: Icon(Icons.logout), title: Text("Logout")),
          ],
        ),
      ),
      body: const Center(
        child: Text('Open the drawer from the top-left menu icon.'),
      ),
    );
  }
}
