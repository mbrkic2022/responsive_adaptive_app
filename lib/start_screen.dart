import 'package:flutter/material.dart';
import 'package:my_first_app/gradient_container.dart';

class StartScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StartScreenState();
  }
}

class _StartScreenState extends State<StartScreen> {
  final _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _textEditingController,
          ),
          TextButton(onPressed: onPressed, child: const Text('Start'))
        ],
      ),
    );
  }

  void onPressed() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (ctx) => GradientContainer(
                color1: Colors.purple,
                color2: Colors.yellow,
                text: _textEditingController.text)));
  }
}
