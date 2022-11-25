// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'constants.dart';
import 'my_Card.dart';

class Result_Page extends StatelessWidget {
  const Result_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(
          color: kLitePink,
        ),
        // ignore: prefer_const_constructors
        title: Text(
          "BMI CALCULATOR",
          // ignore: prefer_const_constructors
          style: TextStyle(
            color: kLitePink,
            fontFamily: 'Zen_Kurenaido',
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // ignore: prefer_const_constructors
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: Container(
              // ignore: prefer_const_constructors
              child: Text(
                textAlign: TextAlign.center,
                'YOUR RESULT',
                style: kResultTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: MyCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'NORMAL',
                    style: kResutLabelstyle,
                  ),
                  Text(
                    '17.5',
                    style: kBMIResultStyle,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Your BMI result is quit low, you should eat more!',
                    style: kResultStyle,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
