import 'package:flutter/material.dart';


class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(30),
      child: Text(questionText, style: const TextStyle(fontSize: 16), textAlign: TextAlign.center),
    );
  }
}