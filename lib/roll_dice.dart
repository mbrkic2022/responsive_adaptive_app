import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class RollDice extends StatefulWidget {
  final String text;
  const RollDice({required this.text, super.key});
  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  var dice = 2;

  void onPressed() {
    setState(() {
      dice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // if (MediaQuery.of(context).orientation == Orientation.landscape) {
    //   return const Center(
    //     child: Text('Please rotate your device to portrait mode'),
    //   );
    // } else {
    //   return Center(
    //     child: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       children: [
    //         Text(widget.text),
    //         Image.asset('assets/images/dice-$dice.png', width: 200),
    //         TextButton(
    //           onPressed: onPressed,
    //           child: const Text('Roll dice'),
    //         ),
    //         TextButton(onPressed: onPressed1, child: const Text('Go back'))
    //       ],
    //     ),
    //   );
    // }
    if (MediaQuery.of(context).size.width < 600) {
      return _buildPortraitMode();
    } else {
      return _buildLandscapeMode();
    }
  }

  Widget _buildPortraitMode() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(widget.text),
          Image.asset('assets/images/dice-$dice.png', width: 200),
          TextButton(
            onPressed: onPressed,
            child: const Text('Roll dice'),
          ),
          TextButton(onPressed: onPressed1, child: const Text('Go back'))
        ],
      ),
    );
  }

  Widget _buildLandscapeMode() {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(widget.text),
          Image.asset('assets/images/dice-$dice.png', width: 200),
          TextButton(
            onPressed: onPressed,
            child: const Text('Roll dice'),
          ),
          TextButton(onPressed: onPressed1, child: const Text('Go back'))
        ],
      ),
    );
  }

  void onPressed1() {
    Navigator.pop(context);
  }
}
