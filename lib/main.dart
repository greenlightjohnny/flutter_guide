import 'package:flutter/material.dart';
import './question.dart';

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
            Question(
              questions[_questionsIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: _answerQuestions,
            ),
          ],
        ),
      ),
    );
  }
}
