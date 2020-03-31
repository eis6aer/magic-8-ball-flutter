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
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ask Me Anything"),
      ),
      body: Ball(),
    );Ball();
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ball = 1;

  void randomImage() {
    setState(() {
      ball = Random().nextInt(4) +1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FlatButton(
          onPressed: randomImage,
          child: Image.asset('images/ball$ball.png'),
        ),
    );
  }
}
