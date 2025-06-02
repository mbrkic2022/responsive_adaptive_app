import 'package:flutter/material.dart';
import 'package:my_first_app/roll_dice.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key,
      required this.color1,
      required this.color2,
      required this.text});

  final Color color1, color2;
  final String text;
  //  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: RollDice(text: text),
    );
  }
}
