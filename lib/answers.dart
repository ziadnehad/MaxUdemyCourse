import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String questions;
  final Function onPressed;

  Answer({this.questions, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(questions),
    );
  }
}
