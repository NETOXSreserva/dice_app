import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  String activeDiceImage = 'assets/dice-images/dice-1.png';

  void rollDice () {
    setState(() {
      int diceNumber = randomizer.nextInt(6) + 1;
      activeDiceImage = 'assets/dice-images/dice-$diceNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDiceImage,
          width: 250
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.deepPurple,
            textStyle: const TextStyle(
                fontFamily: 'Courier',
                fontSize: 23
            )
          ),
          child: const Text('Roll Dice')
        )
      ],
    );
  }
}