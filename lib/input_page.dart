import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerheight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    colour: activeCardColour,
                    cardChild: IconContent(icon:FontAwesomeIcons.mars,label:'MALE'),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: activeCardColour,
                    cardChild: IconContent(icon:FontAwesomeIcons.venus,label:'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReuseableCard(colour: activeCardColour)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(colour: activeCardColour),
                ),
                Expanded(
                  child: ReuseableCard(colour: activeCardColour),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerheight,
          ),
        ],
      ),
    );
  }
}

