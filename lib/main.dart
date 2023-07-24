import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home:Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
             image: AssetImage('images/background.jpg'),fit: BoxFit.cover
          )
        ),
            child: Scaffold(
          backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                title: const Center(
                  child: Text('Welcome to MagicBall'),
                ),
              ),
              body:  const magicBall(),
      )
          )
        ),
  );
}
class magicBall extends StatefulWidget {
  const magicBall({super.key});

  @override
  State<magicBall> createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  int choice = 0;
  choiceChange() {
    setState(() {
      choice = Random().nextInt(6) ;
    }); -
  }
    @override
    Widget build(BuildContext context) {
      return Center(
        child: Column(
          children: [
            Expanded(
                child: Image.asset('images/magic-8-ball-vectors$choice.png')
            ),
            TextButton(
                onPressed:()
                {
                  choiceChange();
                  },
             child: const Text('ASK',style: TextStyle(color: Colors.white,fontSize: 25.0))
            )
          ],
        ),
      );
    }
  }

