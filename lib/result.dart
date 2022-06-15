import 'package:flutter/material.dart';
import 'goBack.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function goback;
  Result(this.resultScore, this.goback);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 50) {
      resultText = 'You are awesome!';
    } else if (resultScore >= 30) {
      resultText = 'You are good';
    } else {
      resultText = 'You are sad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      GoBack(goback),
    ]));
  }
}
