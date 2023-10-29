import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  return runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            title: const Text('Ask me Anything'),
            backgroundColor: Colors.blueAccent,
          ),
          body: const Magic8Ball(),
        ),
      )
  );
}

class Magic8Ball extends StatefulWidget {
  const Magic8Ball({super.key});

  @override
  State<Magic8Ball> createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballNumber = 3;

  void changeState() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          changeState();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}

