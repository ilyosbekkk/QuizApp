import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  final Function index;

  const Start({this.index});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("START"),
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: index,
      ),
    );
  }
}
