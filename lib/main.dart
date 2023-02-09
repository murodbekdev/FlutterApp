// ignore_for_file: sort_child_properties_last, prefer_const_constructors, use_key_in_widget_constructors, avoid_print, unused_local_variable

// import 'package:first_app/question.dart';
import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';
// import './answer.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(_MyApp()); // Alternative option on top of that

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Black', 'score': 5},
        {'text': 'Yellow', 'score': 6},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Sheep', 'score': 3},
        {'text': 'Hen', 'score': 4},
        {'text': 'Cow', 'score': 7},
        {'text': 'Turkey', 'score': 9}
      ]
    },
    {
      'questionText': 'What\'s your favorite instructror?',
      'answers': [
        {'text': 'Max', 'score': 2},
        {'text': 'Max', 'score': 2},
        {'text': 'Max', 'score': 2},
        {'text': 'Max', 'score': 2}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score; // _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions here!');
    }
  }

  @override
  Widget build(BuildContext context) {
    var dummy = ['Hey Yoo'];
    dummy.add(
        'Murodjon'); // it modifies the original list--> ya'ni original listga qo'sha oladi bu map dan farqli tarafi
    print(dummy);

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
