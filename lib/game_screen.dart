import 'package:flutter/material.dart';
import 'package:my_first_app/gradient_container.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
        color1: Colors.purple, color2: Colors.yellow, text: text);
  }
}
