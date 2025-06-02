import 'package:flutter/material.dart';
import 'package:my_first_app/start_screen.dart';
// import 'package:flutter/services.dart';

ColorScheme kColorScheme = ColorScheme.fromSeed(seedColor: Colors.purple);
void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.primary,
          foregroundColor: kColorScheme.onPrimary,
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: kColorScheme.onPrimaryContainer,
              ),
            ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kColorScheme,
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: kColorScheme.primary,
          foregroundColor: kColorScheme.onPrimary,
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: kColorScheme.onPrimaryContainer,
              ),
            ),
      ),
      home: StartScreen(),
    ),
  );
}
