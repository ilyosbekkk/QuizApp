import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerToQuestion;
  final String text;


  Answer(this.answerToQuestion, this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        child: RaisedButton(
          onPressed: answerToQuestion,
          textColor: Colors.white,
          child: Text(text),
          color: Colors.blueAccent,
        ),
      ),
    );
  }

}
