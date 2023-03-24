import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
        debugShowCheckedModeBanner: false,
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 151, 140, 104),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 148, 3, 173),
        title: Center(child: Text('Know Your Future!!!')),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int balling = 2;
  void askAnything() {
    setState(() {
      balling = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            askAnything();
          },
          child: Image(image: AssetImage('images/ball$balling.png'))),
    );
  }
}
