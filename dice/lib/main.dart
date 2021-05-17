import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('DiceGame'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: dicepage(),
      ),
    ),
  );
}

//interaction with app something changes is stateful else stateless widget
//stful

/*
class dicepage extends StatefulWidget {
  @override
  _dicepageState createState() => _dicepageState();
}

class _dicepageState extends State<dicepage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // ignore: deprecated_member_use
              child: FlatButton(
                onPressed:(){
                  print("Clicked");
                },
                child: Image.asset('images/dice1.png'),
              )
          ),
          // ignore: deprecated_member_use
          Expanded(child: FlatButton(
            onPressed: (){
              print("Clicked");
            },
            child: Image.asset('images/dice1.png'),
          )),
        ],
      ),
    );
  }
}

*/




class dicepage extends StatefulWidget {
  @override
  dicepageState createState() => dicepageState();

}

class dicepageState extends State<dicepage>{

  int dicevall=1;
  int dicevalr=1;
  int variable=0;

  void makechange()
  {
      setState(() {
        dicevall =Random().nextInt(6) + 1;
        dicevalr =Random().nextInt(6) + 1;
      });
  }
  @override
  Widget build(BuildContext context) {
   return Center(
     child: Row(
       children: [
         Expanded(
             // ignore: deprecated_member_use
             child: FlatButton(
                 onPressed:makechange,
                 child: Image.asset('images/dice$dicevall.png')
             )
         ),
         // ignore: deprecated_member_use
         Expanded(child: FlatButton(
             onPressed: makechange,
             child: Image.asset('images/dice$dicevalr.png')
         )),


       ],
     ),
   );

    // TODO: implement build
    throw UnimplementedError();
  }
}



// class _dicepageState extends State<dicepage> {
//
//   Color mycolor=Colors.yellow;
//     bool toggle=false;
//   _dicepageState({this.mycolor=Colors.yellow});
//   @override
//   Widget build(BuildContext context) {
//     return FlatButton(
//       onPressed: (){
//         print(mycolor);
//         setState(() {
//               if(toggle==false){
//             mycolor=Colors.black;
//             toggle=true;
//             }
//               else{
//                 mycolor=Colors.yellow;
//                 toggle=false;
//               }

//
//         });
//         print(mycolor);
//       },
//       child: Container(
//         width:100,
//         height: 100,
//         color: mycolor,
//       ),
//     );
//   }
// }

/* single dice change
import 'package:flutter/material.dart';
import 'dart:math';


void main() {
 return runApp(
   MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       backgroundColor: Colors.red,
       appBar: AppBar(
         title: Text('DiceGame'),
         backgroundColor: Colors.red,
         centerTitle: true,
       ),
       body: dicepage(),
     ),
   ),
 );
}



class dicepage extends StatefulWidget {
 @override
 dicepageState createState() => dicepageState();

}

class dicepageState extends State<dicepage>{

 int dicevall=1;
 int dicevalr=1;


 // void makechange()
 // {
 //     setState(() {
 //       dicevall =Random().nextInt(6) + 1;
 //       dicevalr =Random().nextInt(6) + 1;
 //     });
 // }




 @override
 Widget build(BuildContext context) {
  return Center(
    child: Row(
      children: [
        Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
                onPressed:(){
                  setState(() {
                    dicevall=Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$dicevall.png')
            )
        ),
        // ignore: deprecated_member_use
        Expanded(child: FlatButton(
            onPressed: (){
              setState(() {
                dicevalr=Random().nextInt(6) + 1;
              });
            },
            child: Image.asset('images/dice$dicevalr.png')
        )),


      ],
    ),
  );

   // TODO: implement build
   throw UnimplementedError();
 }
}


 */