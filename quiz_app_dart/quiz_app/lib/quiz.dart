import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';

import 'start_screen.dart';

class Quiz extends StatefulWidget{
const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  var activeScreen = 'start-screen';

  void switchScreen(){
    setState((){
      activeScreen = 'questions-screen';
    });
  }
  @override
  Widget build(context){
    Widget screenWidget  = StartScreen(switchScreen);

    if(activeScreen == 'questions-screen'){
      screenWidget = const QuestionsScreen();
    }
    
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
          child: screenWidget,
          //child: activeScreen == 'start-sscreen' ? StartScreen(switchScreen) : const QuestionsScreen() ,
      ),
      ),
    );
  }
}
