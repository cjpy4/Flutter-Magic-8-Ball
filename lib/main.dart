import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: M8Ball(),
      ),
    );

class M8Ball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('The Digital Sage'),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      backgroundColor: Colors.blue.shade600,
      body: WiseAnswer(),
    );
  }
}

class WiseAnswer extends StatefulWidget {
  @override
  _WiseAnswerState createState() => _WiseAnswerState();
}

class _WiseAnswerState extends State<WiseAnswer> {
  int ballNumber = 1;

  getAnswer() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      print(ballNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            getAnswer();
          },
          child: Image(
            image: AssetImage('images/ball$ballNumber.png'),
          ),
        ),
      ),
    );
  }
}
