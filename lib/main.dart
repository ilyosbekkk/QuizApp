

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';
import 'package:flutter_complete_guide/start.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': "What is your favourite color?",
      'answers': [
        {'text': 'Black', 'score': 40},
        {'text': 'Red', 'score': 30},
        {'text': 'Yellow', 'score': 20},
        {'text': 'Green', 'score': 10}
      ],
    },
    {
      'questionText': "What is your favourite animal?",
      'answers': [
        {'text': 'Horse', 'score': 40},
        {'text': 'Cow', 'score': 30},
        {'text': 'Rabbit', 'score': 20},
        {'text': 'Hen', 'score': 10}
      ],
    },
    {
      'questionText': "What is your favourite season?",
      'answers': [
        {'text': 'Summer', 'score': 40},
        {'text': 'Winter', 'score': 30},
        {'text': 'Spring', 'score': 20},
        {'text': 'Autumn', 'score': 10}
      ],
    }
  ];
  int _questionIndex = 0;
  int _totalScore = 0;
  bool _isActive = false;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
  }

  void _setIndex() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void startGame() {
    setState(() {
      _isActive = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Quiz'),
            ),
            body: _isActive == true
                ? _questionIndex < _questions.length
                    ? Quiz(
                        questions: _questions,
                        answerQuestion: _answerQuestion,
                        questionIndex: _questionIndex)
                    : MyResult(
                        totalScore: _totalScore,
                        index: _setIndex,
                      )
                : Start(index: startGame)));
  }
}
