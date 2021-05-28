import 'package:flutter/material.dart';
import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function onPressed;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
        ),
        Text(questions[questionIndex]['question']),
        ...(questions[questionIndex]['answer'] as List<String>).map((asnwer) {
          return Answer(questions: asnwer, onPressed: onPressed);
        }).toList(),
      ],
    );
  }
}
