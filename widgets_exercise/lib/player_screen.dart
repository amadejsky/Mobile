import 'package:flutter/material.dart';

class PlayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 75, 96, 107),
                  Color.fromARGB(255, 23, 25, 26),
                ]),
          ),
          //here image
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/example1.png',
                width: 370,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                height: 60,
                child: const Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text('In This Together',
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 253, 253, 253))),
                      ),
                    ),
                    Positioned(
                        right: 10.0,
                        top: 30.0,
                        child: Icon(
                          Icons.headphones,
                          color: Colors.white,
                          size: 33,
                        )),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: const Text('Boil The Ocean',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(123, 253, 253, 253))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/images/slider.png',
                width: 1400,
              )
            ],
          ),
        ),
      ),
    );
  }
}
