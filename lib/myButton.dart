import 'package:flutter/material.dart';
import 'constants.dart';

class MyButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const MyButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      // ignore: sort_child_properties_last
      child: Icon(
        icon,
        color: kActiveCardColor,
      ),
      // elevation: 6.0,
      // disabledElevation: 6.0,
      // ignore: prefer_const_constructors
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: onPressed,
      fillColor: kPurpule,
      shape: CircleBorder(),
    );
  }
}
