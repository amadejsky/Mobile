
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlign = Alignment.topLeft;
const endAlign = Alignment.bottomRight;

class GradientFunction extends StatelessWidget {
   const GradientFunction(this.color1, this.color2, {super.key});

   const GradientFunction.purple({super.key})
        : color1 = Colors.deepPurple,
          color2 = Colors.indigo;

   final Color color1;
   final Color color2;

  

  @override
  Widget build(context){
    final stopwatch = Stopwatch()..start();
    Widget gradientWidget = Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2],
              begin: startAlign,
              end: endAlign,
            ),
          ),
          child: const Center(
            child: DiceRoller(),           
          ),
        );
         stopwatch.stop();
    print('Execution time build: ${stopwatch.elapsedMilliseconds} ms');
    return gradientWidget;
  }
}

// class GradientFunction extends StatelessWidget {
//    const GradientFunction({super.key,required this.colors});
//    final List<Color> colors;

//   @override
//   Widget build(context){
//     final stopwatch = Stopwatch()..start();
//     Widget gradientWidget = Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: colors,
//               begin: startAlign,
//               end: endAlign,
//             ),
//           ),
//           child: const Center(
//             child: StyledText('Text to style as parameter')
//           ),
//         );
//          stopwatch.stop();
//     print('Execution time build: ${stopwatch.elapsedMilliseconds} ms');
//     return gradientWidget;
//   }
// }
