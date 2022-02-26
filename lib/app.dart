import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalStore = 0;

  final questions = const [
    {
      "questionText": 'What\'s your favorite color?', 
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      "questionText":'What\'s your favorite animal?', 
      "answers": [
        {'text': 'Tiger', 'score': 5},
        {'text': 'Lion', 'score': 4},
        {'text': 'Shark', 'score': 4},
        {'text': 'Dog', 'score': 2},
      ]
    },
    {
      "questionText":'What\'s your favorite char?', 
      "answers": [
        {'text': 'A', 'score': 5},
        {'text': 'B', 'score': 6},
        {'text': 'C', 'score': 4},
        {'text': 'D', 'score': 2},
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalStore += score;
    setState(() {
      _questionIndex++;
    }); 
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalStore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: const Text('My First App')),
      body: _questionIndex < questions.length ? Quiz(questions, _questionIndex, _answerQuestion) :  Result(_totalStore, _resetQuiz),
    ));
  }
}