import 'package:flutter/material.dart';
import 'package:first_app/gradient_function.dart';


void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientFunction(Color.fromARGB(255, 91, 9, 233),Color.fromARGB(222, 245, 0, 204)),
      ),
    ),
  );
}

