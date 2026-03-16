import 'package:flutter/material.dart';

class ImageWidgetExample extends StatelessWidget {
  const ImageWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Widget Example'),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            'assets/images/custom_image.png',
            width: 320,
            height: 220,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
