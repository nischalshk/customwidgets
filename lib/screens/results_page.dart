

import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        title:Text('BMI Calculator',),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    Expanded(
      child: Container(
        child:Text('Results',style:kTitleTextStyle,),

      ),
    ),
    Expanded(
      flex:5,
      child:ReuseableCard(colour: kActiveCardColour,
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
    Text('Normal',style: kResultTextStyle,),
    Text('18',style:kBMITextStyle,),
    Text('',
    textAlign:TextAlign.center, style:kBodyTextStyle,),
  ],
        ),
      
      ),

    ),


  ],
      ),
    ); 
  },
}