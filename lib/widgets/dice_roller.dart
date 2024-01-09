import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 1;

  rollDice() {
    setState(() {
      activeDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset('assets/images/dice-$activeDice.png'),
        ),
        ElevatedButton(
          onPressed: rollDice,
          child: Text('Roll'),
        )
      ],
    );
  }
}
