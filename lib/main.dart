import 'package:flutter/material.dart';
import 'input_page.dart';

void main(List<String> args) {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(bodyColor: Colors.tealAccent, displayColor: Colors.tealAccent),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.tealAccent),
        scaffoldBackgroundColor: const Color(0xff0a0e21),
      ),
      home: InputPage(),
    );
  }
}
