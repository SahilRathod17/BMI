// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  BottomButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kLitePink,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomBorder,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Color(0xFFffffd3),
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'Zen_Kurenaido',
            ),
          ),
        ),
      ),
    );
  }
}
