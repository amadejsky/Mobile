import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widgets_exercise/data/songs.dart';
import 'package:widgets_exercise/models/song_model.dart';


class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState(){
    return _PlayerScreenState();
  }
}
  class _PlayerScreenState extends State<PlayerScreen>{
    double _currentPosition = 0.75;
    late SongModel currentSong;
    late int currentIndex;
    @override
    void initState(){
      super.initState();
      currentIndex = 0;
      currentSong = songs[currentIndex];
      
    }

    void _previousSong() {
  setState(() {
    if (currentIndex == 0) {
      currentIndex = songs.length - 1;
    } else {
      currentIndex -=1;
    }
    currentSong = songs[currentIndex];
  });
}

void _nextSong() {
  setState(() {
    if (currentIndex == songs.length - 1) {
      currentIndex = 0;
    } else {
      currentIndex += 1;
    }
    currentSong = songs[currentIndex];
  });
}
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
                'assets/images/song${currentIndex}.png',
                width: 390,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                height: 60,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          currentSong.title,
                            style: const TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                
                                )),
          
                      ),
                    ),
                    
                    const Positioned(
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(currentSong.band,
                      style:const TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(153, 253, 253, 253))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Image.asset(
              //   'assets/images/slider.png',
              //   width: 1400,
              // ),
              Slider(
                value: _currentPosition, 
                min: 0,
                max: 1,
                onChanged: (value){
                  setState((){
                    _currentPosition = value;
                  });
                },
                activeColor: Colors.white,
                inactiveColor: Colors.grey,
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
                  onPressed: _previousSong, 
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
                  onPressed: _nextSong, 
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

  
