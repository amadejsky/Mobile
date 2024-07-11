import 'package:flutter/material.dart';
import 'dart:math';
final randomizer = Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRolleState();
  }
}

class _DiceRolleState extends State<DiceRoller> {
   var currentRoll = 2;
   

   void rollDice(){
    setState((){
      currentRoll = randomizer.nextInt(6)+1;
    });
   }
  @override
  Widget build(context){
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              Image.asset(
                'assets/images/dice-$currentRoll.png',
                width: 200,
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(foregroundColor: Colors.white,
              // padding:const EdgeInsets.only(top:15),
              textStyle: const TextStyle(
                fontSize: 28,
              
              )),
              child:const Text('Roll!')
              )
            ]
            );
  }
}