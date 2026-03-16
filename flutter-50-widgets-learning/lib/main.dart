import 'package:flutter/material.dart';
// Add your widget imports manually here.
// Example:
// import 'widgets/01_text_widget.dart';

import 'widgets/03_image_widget.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,

    // add class name of the widget you want to use
    home: ImageWidgetExample(),
  ));
}
