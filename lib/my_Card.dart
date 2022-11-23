import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;

  const MyCard({super.key, required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: colour,
      ),
    );
  }
}
