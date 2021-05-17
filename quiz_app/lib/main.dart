import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: QuizPage(),
        ),
      ),
    );
  }
}

_onBasicAlertPressed(context) {
  Alert(
    context: context,
    title: "ALERT",
    desc: "You have reached the end of the quiz",
  ).show();
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scorekeeper = [];

  List<String> questions = [
    'My name is Sampreeti',
    'I am 21',
    'I love Maths',
    "I stay in Pune",
    "I am a fan of Cricket",
    "I love cooking more than eating",
    'I exercise everyday',
    'I am a sincere student',
    'I do not like travelling',
    "Programming is love",
  ];
  List<bool> answers = [
    true,
    true,
    false,
    true,
    false,
    false,
    false,
    true,
    false,
    true,
  ];
  int questionNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              questions[questionNumber], //*************
              //questions[0],
              //'This is where the question text will go',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    var ans = answers[questionNumber];
                    if (ans == true) {
                      print('Wow,You are the real og');
                      scorekeeper.add(Icon(Icons.check, color: Colors.green));
                    } else {
                      print('Mehh that was lame');
                      scorekeeper.add(Icon(
                        Icons.close,
                        color: Colors.red,
                      ));
                    }
                    if (questionNumber == questions.length - 1) {
                      _onBasicAlertPressed(context);
                      questionNumber=-1;
                      print('Play again');
                      scorekeeper = [];
                    }
                    if (questionNumber + 1 < questions.length)
                      questionNumber++; //questionNumber+=1
                  });
                },
                child: Text(
                  'True',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    var ans = answers[questionNumber];
                    if (ans == false) {
                      print('Wow,You the real og');
                      scorekeeper.add(Icon(
                        Icons.check,
                        color: Colors.green,
                      ));
                    } else {
                      print('Mehh that was lame');
                      scorekeeper.add(Icon(
                        Icons.close,
                        color: Colors.red,
                      ));
                    }
                    if (questionNumber == questions.length - 1) {
                      _onBasicAlertPressed(context);
                      questionNumber=-1;
                      print('Play again');
                      scorekeeper = [];
                    }
                    if (questionNumber + 1 < questions.length) questionNumber++;
                  });
                },
                child: Text(
                  'False',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ),
        ),

        // Row(
        //   // children: scorekeeper,
        //   children: [
        //     Icon(Icons.check,color: Colors.green,),
        //   ],
        // )
        Row(
          // Icon(Icons.check,color: Colors.green,),
          // Icon(Icons.close,color: Colors.red,),
          children: scorekeeper,
        )
      ],
    );
  }
}

/*
import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child:Scaffold(
          backgroundColor: Colors.black,
          body: QuizPage(),
        ),
      ),);
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scorekeeper=[];

//only things in build get loaded with hot reload so do hot restart

  List<String> questions=[
    'My name is Sampreeti',
    'I am 21',
    'I love Maths',
    "I stay in Pune",
    "I am a fan of Cricket",
    "I love cooking more than eating",
    'I exercise everyday',
    'I am a sincere student',
    'I do not like travelling',
    "Programming is love",
  ];
  //Icon(Icons.check)??
  List<bool> answers=[
    true,
    true,
    false,
    true,
    false,
    false,
    false,
    true,
    false,
    true,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex:5,
          child: Center(
            child: Text(
             // 'This is where the question text will go',

              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
        Expanded(child:Padding(
          padding: const EdgeInsets.all(15.0),
          child: FlatButton(
              color: Colors.green,
              onPressed: () {},
              child: Text(
                'True',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        ),),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
                color: Colors.red,
                onPressed: () {},
                child: Text(
                  'False',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ),
        ),
        Row(
          children: scorekeeper,
        )

      ],
    );
  }
}


*/
