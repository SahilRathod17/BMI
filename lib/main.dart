// --no-sound-null-safety
import 'package:flutter/material.dart';
import 'Screens/input_page.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(bodyColor: Colors.black, displayColor: Colors.black),
        appBarTheme: const AppBarTheme(color: Color(0xFFffffd3)),
        scaffoldBackgroundColor: const Color(0xFFffffd3),
      ),
      home: InputPage(),
    );
  }
}
