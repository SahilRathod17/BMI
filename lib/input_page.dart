import 'package:flutter/material.dart';

// ignore: constant_identifier_names
const BottomBorder = 70.0;
// ignore: constant_identifier_names
const CardColor = Color(0xFFc6fad6);
const LitePink = Color(0xFFF06292);

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
            children: const <Widget>[
              Expanded(
                child: Card(
                  colour: CardColor,
                ),
              ),
              Expanded(
                child: Card(
                  colour: CardColor,
                ),
              ),
            ],
          )),
          const Expanded(
            child: Card(
              colour: CardColor,
            ),
          ),
          Expanded(
              child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const Expanded(
                child: Card(colour: CardColor),
              ),
              const Expanded(
                child: Card(colour: CardColor),
              ),
            ],
          )),
          Container(
            color: LitePink,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: BottomBorder,
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

class Card extends StatelessWidget {
  final Color colour;
  const Card({super.key, required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: colour,
      ),
    );
  }
}
