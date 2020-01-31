import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;
  void _answerQuestions() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionsText': 'What\'s your favorite color?',
        'answers': ['Blue', 'red', 'Green'],
      },
            {
        'questionsText': 'What\'s your favorite animal?',
        'answers': ['Ferret', 'Rabbit', 'Fox', 'Weasel'],
      },
         {
        'questionsText': 'What\'s your favorite instructor?',
        'answers': ['Wes', 'Max', 'Len'],
      },
     
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cycle UP'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionsIndex]['questionsText'],
            ),
            ...(questions[_questionsIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestions, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
