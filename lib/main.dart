import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  var questionsIndex = 0;
  void answerQuestions() {
    questionsIndex = questionsIndex + 1;
    
  }



  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cycle UP'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionsIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestions,
            ),
          ],
        ),
      ),
    );
  }
}
