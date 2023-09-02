import 'dart:math';
import 'package:flutter_application_1/styled_text.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  int currentDiceRoll = 2;
  var activeDiceImage = 'assets/images/dice-2.png';
  void rollDice(){
    setState(() {
     currentDiceRoll = Random().nextInt(6)+1; //0<>6
    });
  }
  @override
  Widget build(context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ),
            const SizedBox(height: 20, width: 200),
            TextButton(
              onPressed: rollDice,
              child: const StyledText('Roll Dice!!'),
            ),
          ],
        );
  }
}