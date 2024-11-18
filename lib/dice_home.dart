import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  List<String> diceimages = [
'images/1.png',
'images/2.png',
'images/3.png',
'images/4.png',
'images/5.png',
'images/6.png',
  ];
  int diceIndex =0;
  void rollDice(){
    setState(() {
      diceIndex= Random().nextInt(6);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text('Muhammad Usama'),),
    
    body: Center(
      child: InkWell(onTap:(){
        rollDice();
      },
      child: Image.asset(diceimages[diceIndex],
      width: 200,
      height: 200,
      ),
      )
    ),
    
    
    );

    
  }
}