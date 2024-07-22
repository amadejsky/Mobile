

import 'package:flutter/material.dart';
import 'package:widgets_exercise/player_screen.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  
  @override
  State<HomePage> createState(){
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(context) {
    return Center(
      child: PlayerScreen(),
      );
  }

}