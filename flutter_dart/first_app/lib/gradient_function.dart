import 'package:first_app/style_text.dart';
import 'package:flutter/material.dart';

const startAlign = Alignment.topLeft;
const endAlign = Alignment.bottomRight;

class GradientFunction extends StatelessWidget {
   const GradientFunction({super.key});
  @override
  Widget build(context){
    final stopwatch = Stopwatch()..start();
    Widget gradientWidget = Container(
          decoration:const BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Color.fromARGB(255, 109, 33, 79),
                Color.fromARGB(255, 98, 100, 104),
              ],
              begin: startAlign,
              end: endAlign,
            ),
          ),
          child: const Center(
            child: StyledText('Text to style as parameter')
          ),
        );
         stopwatch.stop();
    print('Execution time build: ${stopwatch.elapsedMilliseconds} ms');
    return gradientWidget;
  }
}
