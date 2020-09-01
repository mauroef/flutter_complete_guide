import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultTtext = 'Youdid it!';

    if (resultScore <= 8) {
      resultTtext = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultTtext = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultTtext = 'You are... strange?!';
    } else {
      resultTtext = 'You are so bad!';
    }

    return resultTtext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
