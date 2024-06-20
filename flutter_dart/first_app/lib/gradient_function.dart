import 'package:flutter/material.dart';

class GradientFunction extends StatelessWidget {
   const GradientFunction({super.key});
  @override
  Widget build(context){
    final stopwatch = Stopwatch()..start();
    Widget gradientWidget = Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 109, 33, 79),
                Color.fromARGB(255, 24, 44, 97),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              'Hello World',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        );
         stopwatch.stop();
    print('Execution time build: ${stopwatch.elapsedMilliseconds} ms');
    return gradientWidget;
  }
}
