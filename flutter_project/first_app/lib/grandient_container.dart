import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
const defaultColorList = [
  Color.fromARGB(255, 52, 0, 141),
  Color.fromARGB(255, 231, 202, 248),
];

class GradientContainer extends StatelessWidget {
  // constructor1
  const GradientContainer({super.key, required this.colorList});
  // constructor2
  const GradientContainer.purple({super.key}) : colorList = defaultColorList;

  final List<Color> colorList;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorList,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
