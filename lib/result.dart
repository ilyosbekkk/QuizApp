import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyResult extends StatelessWidget {
  final totalScore;
  final Function index;

  const MyResult({this.totalScore, this.index});

  String get result {
    String resultText = "";
    if (totalScore >=30) resultText = "You are not much  active:(";
    if (totalScore >=60) resultText = "You are pretty much active:)";
    if(totalScore >=90)  resultText =  "You are superb";
    if(totalScore>=120) resultText = "You are hero, keep it up";

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          result,
          style: TextStyle(
            fontSize: 50,
            color: Colors.green,
          ),
          textAlign: TextAlign.center,
        ),
        Text("Your score is " +
          totalScore.toString(),
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
        RaisedButton(
          onPressed: index,
          child: Text("Restart"),
          textColor: Colors.white,
          color: Colors.blue,
        )
      ],
    ));
  }
}
