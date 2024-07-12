import 'package:flutter/material.dart';

import 'start_screen.dart';

class Quiz extends StatefulWidget{
const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 243, 62, 7),
              Color.fromARGB(255, 56, 5, 243),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          ),
          child: const StartScreen()),
      ),
    );
  }
}