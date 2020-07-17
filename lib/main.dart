import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        title: Text("Magic 8 Ball"),
        backgroundColor: Colors.indigo.shade600,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  int ballNum = 1;
  void changeBall() {
    ballNum = Random().nextInt(5) + 1;
  }

  Widget build(BuildContext context) {
    return Container(
      //Add button
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              changeBall();
            });
          },
          child: Image.asset('images/ball$ballNum.png'),
        ),
      ),
    );
  }
}
