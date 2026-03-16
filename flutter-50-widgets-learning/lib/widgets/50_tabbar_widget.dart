import 'package:flutter/material.dart';

class TabbarWidgetExample extends StatelessWidget {
  const TabbarWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Widget Example'),
      ),
      body: DefaultTabController(
  length: 3,
  child: Column(
    children: [
      const TabBar(
        tabs: [
          Tab(icon: Icon(Icons.home), text: 'Home'),
          Tab(icon: Icon(Icons.star), text: 'Favorite'),
          Tab(icon: Icon(Icons.person), text: 'Profile'),
        ],
      ),
      Expanded(
        child: TabBarView(
          children: [
            Center(child: Text('Home Tab Content')),
            Center(child: Text('Favorite Tab Content')),
            Center(child: Text('Profile Tab Content')),
          ],
        ),
      ),
    ],
  ),
),
    );
  }
}
