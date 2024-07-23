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
              const Spacer(),
              Image.asset(
                'assets/images/example1.png',
                width: 390,
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
                                color: Color.fromARGB(255, 253, 253, 253),
                                fontWeight: FontWeight.bold,
                                
                                )),
          
                      ),
                    ),
                    Positioned(
                        right: 10.0,
                        top: 30.0,
                        child: Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 29, 185, 84),
                          size: 33,
                        )),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text('Boil The Ocean',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(153, 253, 253, 253))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/images/slider.png',
                width: 1400,
              ),
              const SizedBox(height: 10,),
              Row(

               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shuffle_outlined,
                      size: 27,
                      color: Color.fromARGB(255, 29, 185, 84),
                    ),),  
                    const SizedBox(width: 30,height:0),
                IconButton(
                  onPressed: () {}, 
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 45,
                    color: Colors.white,
                  )
                  ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.pause_circle_filled_outlined,
                      size: 90,
                      color: Colors.white,
                    ),),  
                IconButton(
                  onPressed: () {}, 
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 45,
                    color: Colors.white,
                  )
                  ),
                  const SizedBox(width: 30,height:0),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.loop_outlined,
                      size: 27,
                      color: Color.fromARGB(255, 29, 185, 84),
                    ),),  
                // OutlinedButton(
                //   onPressed: () {},
                //   style: OutlinedButton.styleFrom(
                //     foregroundColor: Colors.white,
                //     minimumSize: const Size(80,80),
                //     padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(50.0)
                //     ),
                //   ),
                //   child: const Icon(Icons.pause_circle_filled_outlined),
                //   ),
                
               ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 13,height:5),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.monitor,
                        size: 20,
                        color: Colors.white,
                      ),),  
                      const SizedBox(width: 288,height: 5,),
                      IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.list,
                        size: 25,
                        color: Colors.white,
                      ),),  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
