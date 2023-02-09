// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'You are more likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  const Result(this.resultScore, this.resetHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
              style: TextButton.styleFrom(primary: Colors.orange),
              onPressed: resetHandler,
              child: const Text('Restart Quiz!'))
        ],
      ),
    );
  }
}
