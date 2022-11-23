// ignore_for_file: sort_child_properties_last;, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'my_CardChild.dart';
import 'my_Card.dart';

// ignore: constant_identifier_names
const BottomBorder = 70.0;
// ignore: constant_identifier_names
const activeCardColor = Color(0xFFc6fad6);
const LitePink = Color(0xFFF06292);
const purpule = Color(0xFFab96db);
const inactiveCardColor = Color(0xFF92ddc8);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(
              color: LitePink,
              fontFamily: 'Zen_Kurenaido',
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.Male;
                    });
                  },
                  child: MyCard(
                    colour: selectedGender == Gender.Male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: CardChild(
                      icon: FontAwesomeIcons.mars,
                      lable: "MALE",
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.Female;
                    });
                  },
                  child: MyCard(
                    colour: selectedGender == Gender.Female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: CardChild(
                        icon: FontAwesomeIcons.venus, lable: "FEMALE"),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: MyCard(
              colour: inactiveCardColor,
            ),
          ),
          Expanded(
              child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Expanded(
                child: MyCard(colour: inactiveCardColor),
              ),
              Expanded(
                child: MyCard(colour: inactiveCardColor),
              ),
            ],
          )),
          Container(
            color: LitePink,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: BottomBorder,
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
