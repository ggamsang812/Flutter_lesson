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

  void rollDice() {
    // ...
    // need to add function here
    //
  }

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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 25,
                ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
