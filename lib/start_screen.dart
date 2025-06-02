import 'dart:io';

import 'package:flutter/cupertino.dart';
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

  // void onPressed() {
  //   Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //           builder: (ctx) => GradientContainer(
  //               color1: Colors.purple,
  //               color2: Colors.yellow,
  //               text: _textEditingController.text)));
  // }

  void onPressed() {
    if (_textEditingController.text.trim().isEmpty) {
      // showDialog(
      //     context: context,
      //     builder: (ctx) => AlertDialog(
      //             title: const Text('Invalid input'),
      //             content: const Text('Make sure the text field is not empty!'),
      //             actions: [
      //               TextButton(
      //                 onPressed: () => Navigator.pop(ctx),
      //                 child: const Text('Ok'),
      //               )
      //             ]));
      _showDialog();
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (ctx) => GradientContainer(
                  color1: Colors.purple,
                  color2: Colors.yellow,
                  text: _textEditingController.text)));
    }
  }

  void _showDialog() {
    if (Platform.isAndroid) {
      showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                  title: const Text('Invalid input'),
                  content: const Text('Make sure the text field is not empty!'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(ctx),
                      child: const Text('Ok'),
                    )
                  ]));
    } else {
      showCupertinoDialog(
          context: context,
          builder: (ctx) => CupertinoAlertDialog(
                  title: const Text('Invalid input'),
                  content: const Text('Make sure the text field is not empty!'),
                  actions: [
                    CupertinoDialogAction(
                      onPressed: () => Navigator.pop(ctx),
                      child: const Text('Ok'),
                    )
                  ]));
    }
  }
}
