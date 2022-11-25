// ignore_for_file: prefer_const_constructors

import 'package:bmi/components/bottom_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/my_Card.dart';

// ignore: camel_case_types
class Result_Page extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Result_Page(
      {required this.bmiResult,
      required this.interpretation,
      required this.resultText});

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
                'YOUR RESULT',
                textAlign: TextAlign.center,
                style: kResultTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: MyCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    resultText,
                    style: kResutLabelstyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMIResultStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kResultStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              title: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
