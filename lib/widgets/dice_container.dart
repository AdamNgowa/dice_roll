import 'package:dice_roller/widgets/dice_roller.dart';
import 'package:flutter/material.dart';

class DiceContainer extends StatelessWidget {
  const DiceContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            color1,
            color2,
          ],
        )),
        child: DiceRoller(),
      ),
    );
  }
}
