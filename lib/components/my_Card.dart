import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget? cardChild;

  // because of null safety we have to declare type void and make it with ? or make required property
  // we can use void Function() or voidCallback
  final void Function()? onPress;
  // final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        // ignore: sort_child_properties_last
        child: cardChild,
        margin: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: colour,
        ),
      ),
    );
  }
}
