import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Ask Me Anything!',
              style: TextStyle(
                color: Color(0xFFEEF0E5),
                fontFamily: 'RobotoMono',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          backgroundColor: const Color(0xFF6e91ef),
        ),
        backgroundColor: const Color(0xFF6e91ef),
        body: MagicBall(),
      ),
    ),
  ));
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {

  int ballNum = 1;

  void ballChange(){
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: TextButton(onPressed: () {
              ballChange();
            },
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset('assets/images/ball$ballNum.png'),
            )),
          ),
        ),
      ],
    );
  }
}
