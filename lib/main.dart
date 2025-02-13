import 'package:flutter/material.dart';
import 'Gradient_Container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(const Color.fromARGB(255, 236, 191, 59),
            const Color.fromARGB(255, 77, 19, 177)),
      ),
    ),
  );
}
