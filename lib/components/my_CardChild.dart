import 'package:flutter/material.dart';
import '../constants.dart';

class CardChild extends StatelessWidget {
  final IconData icon;
  final String lable;

  const CardChild({required this.icon, required this.lable});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        Icon(
          icon,
          size: 85,
          color: const Color(0xFFab96db),
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 15,
        ),
        Text(
          lable,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
