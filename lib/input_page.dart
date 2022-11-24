// ignore_for_file: sort_child_properties_last;, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'my_CardChild.dart';
import 'my_Card.dart';
import 'constants.dart';

enum Gender {
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color MaleCardColor = inactiveCardColor;
  // Color FemaleCardColor = inactiveCardColor;

  // void updateColor(Gender selectedgender) {
  //   //male card was pressed
  //   if (selectedgender == Gender.Male) {
  //     if (MaleCardColor == inactiveCardColor) {
  //       MaleCardColor = activeCardColor;
  //       FemaleCardColor = inactiveCardColor;
  //     } else {
  //       MaleCardColor = inactiveCardColor;
  //     }
  //   }
  //   //female card was pressed
  //   if (selectedgender == Gender.Female) {
  //     if (FemaleCardColor == inactiveCardColor) {
  //       FemaleCardColor = activeCardColor;
  //       MaleCardColor = inactiveCardColor;
  //     } else {
  //       FemaleCardColor = inactiveCardColor;
  //     }
  //   }
  // }

  Gender? selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(
            color: kLitePink,
            fontFamily: 'Zen_Kurenaido',
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Expanded(
                child: MyCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.Male;
                    });
                  },
                  colour: selectedGender == Gender.Male
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: CardChild(
                    icon: FontAwesomeIcons.mars,
                    lable: "MALE",
                  ),
                ),
              ),
              Expanded(
                child: MyCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.Female;
                    });
                  },
                  colour: selectedGender == Gender.Female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild:
                      CardChild(icon: FontAwesomeIcons.venus, lable: "FEMALE"),
                ),
              ),
            ],
          )),
          Expanded(
            child: MyCard(
              colour: kInactiveCardColor,
              // ignore: prefer_const_literals_to_create_immutables
              cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          height.toString(),
                          style: kNumbersLabel,
                        ),
                        Text(
                          "cm",
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        activeColor: kPurpule,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  ]),
            ),
          ),
          Expanded(
              child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Expanded(
                child: MyCard(colour: kInactiveCardColor),
              ),
              Expanded(
                child: MyCard(colour: kInactiveCardColor),
              ),
            ],
          )),
          Container(
            color: kLitePink,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomBorder,
            child: const Center(
              child: Text(
                "CALCULATE",
                style: TextStyle(
                  color: Color(0xFFffffd3),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Zen_Kurenaido',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Container(
//         margin: const EdgeInsets.all(15.0),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10.0),
//           color: const Color(0xFF1D1E33),
//         ),
//         width: 160,
//         height: 175,
//       ),
