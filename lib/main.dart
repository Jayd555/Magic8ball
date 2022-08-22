import 'package:flutter/material.dart';
import 'dart:math';

void main() {

  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text( 'Ask me anything'),
          backgroundColor: Colors.blueAccent,
        ),
        body:MagicBall(),
    ),
  ));
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ball=1;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                    onPressed: () {
                      print("Button pressed");
                      setState(() {
                        ball=Random().nextInt(5) + 1;
                      });

                    },

                child:Image.asset('images/ball$ball.png')
                ),
              ),
            ]
        ));
  }}