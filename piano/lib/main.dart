import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

// void main() {
//   return runApp(XylophoneApp());
// }

void main()=>runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              buildKey(mycolor: Colors.red, soundNumber: 1),
              buildKey(mycolor: Colors.orange, soundNumber: 2),
              buildKey(mycolor: Colors.yellow, soundNumber: 3),
              buildKey(mycolor: Colors.green, soundNumber: 4),
              buildKey(mycolor: Colors.teal, soundNumber: 5),
              buildKey(mycolor: Colors.blue, soundNumber: 6),
              buildKey(mycolor: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

class buildKey extends StatelessWidget {


  int soundNumber;
  var mycolor;//dynamic datatype

  buildKey({@required this.soundNumber,this.mycolor});

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () { //parameter needs function instead of widget
          playSound(soundNumber);
          print("I got clicked");
        },
        child: Container(
          color: mycolor,
        ),

      ),
    );
  }
}

/*
no of times clicked
import 'package:flutter/material.dart';
//import 'package:audioplayers/audio_cache.dart';

// void main() {
//   return runApp(XylophoneApp());
// }

void main()=>runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.black,
       body: SafeArea(
         child: Column(
             children: [
               buildKey(mycolor: Colors.red, soundNumber: 1),
               buildKey(mycolor: Colors.orange, soundNumber: 2),
               buildKey(mycolor: Colors.yellow, soundNumber: 3),
               buildKey(mycolor: Colors.green, soundNumber: 4),
               buildKey(mycolor: Colors.teal, soundNumber: 5),
               buildKey(mycolor: Colors.blue, soundNumber: 6),
               buildKey(mycolor: Colors.purple, soundNumber: 7),
             ],
         ),
       ),
     ),
   );
 }
}

class buildKey extends StatelessWidget {

 Map map={};

 int soundNumber;
 var mycolor;

 buildKey({@required this.soundNumber,this.mycolor})
 {
    map[mycolor]=0;
 }
 // void playSound(int soundNumber) {
 //   final player = AudioCache();
 //   player.play('note$soundNumber.wav');
 // }
 @override
 Widget build(BuildContext context) {
   return Expanded(
     child: GestureDetector(
       onTap: () {
         //playSound(soundNumber);
         int val=++map[mycolor];
         print("Number of times $mycolor is tapped: $val");
       },
       child: Container(
         color: mycolor,
       ),

     ),
   );
 }
}


 */
