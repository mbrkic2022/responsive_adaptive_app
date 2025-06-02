import 'package:flutter/material.dart';
import 'package:my_first_app/start_screen.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MaterialApp(
      home: StartScreen(),
    ),
  );
}
