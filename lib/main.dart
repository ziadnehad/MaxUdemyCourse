import 'package:flutter/material.dart';
import 'package:max_project/quiz.dart';
import 'package:max_project/result.dart';
import 'questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'What is your favourite color ?',
        'answer': ['red', 'green', 'blue', 'yellow']
      },
      {
        'question': 'What is your favourite Shape ?',
        'answer': ['circle', 'rectangle', 'polygon', 'triangle']
      }
    ];
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Question(
              questionText: 'This app ',
            ),
          ),
          body: (questionIndex != questions.length)
              ? Quiz(
                  questions: questions,
                  questionIndex: questionIndex,
                  onPressed: () {
                    setState(() {
                      if (questionIndex < questions.length) {
                        questionIndex++;
                      }
                    });
                  },
                )
              : Result(),
        ),
      ),
    );
  }
}
