import 'package:flutter/material.dart';

import 'package:flutter_application_1/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(188, 12, 29, 128),
            Color.fromARGB(112, 112, 30, 167)
        ),
      ),
    ),
  );
}