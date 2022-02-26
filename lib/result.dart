import 'package:flutter/material.dart';

class Result extends StatelessWidget {
 final int resultScore;
 final VoidCallback resetQuiz;

 Result(this.resultScore, this.resetQuiz);

 String get resultPhrase { 
   String resultText = 'You did it!';
   if (resultScore <= 8) {
     resultText = 'You are awesome and innocent!';
   } else if (resultScore <= 12) {
     resultText = 'Pretty likeable!';
   } else if (resultScore <= 16) {
     resultText = 'You are ... strange!';
   } else {
     resultText = 'You are so bad!';
   }
   return resultText;
 }

 String get resultScoreText { 
   String resultScoreText = 'Your Score: ' + resultScore.toString();
   return resultScoreText;
 }


  @override
  Widget build(BuildContext context) {
    return  Center(child: Column(
      children: <Widget> [
        Text(
          resultPhrase, 
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          resultScoreText, 
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(onPressed: resetQuiz, child: const Text('Restart Quiz!'))
      ],
    ));
  }
}