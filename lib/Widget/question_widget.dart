// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key, required this.indexAction, required this.question, required this.totaQuestions});

  final String question;
  final int indexAction;
  final int totaQuestions;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text('Question ${indexAction+1}/$totaQuestions:$question',
      style: TextStyle(
        fontSize: 24.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),),
    );
  }
}
