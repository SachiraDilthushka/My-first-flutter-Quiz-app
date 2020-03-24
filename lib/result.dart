import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  int resultScore;
  Function resultHandler;
  Result(this.resultScore, this.resultHandler);
  String get resultPhrase {
    var resultText = 'you did it';
    if (resultScore <= 8) {
      resultText = 'You are awsome and innocnt';
    } else if (resultScore <= 12) {
      resultText = 'pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'you are Strong';
    } else {
      resultText = 'You are bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resultHandler,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
