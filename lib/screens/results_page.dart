import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import '../components/reusableCard.dart';
import '../constants.dart';
import '../components/bottom_button.dart';
// ignore: camel_case_types
class resultsPage extends StatelessWidget {
  final String bmiText;
  final String resultText;
  final String interpretationText;
  resultsPage({this.bmiText, this.resultText, this.interpretationText});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("BMI CALCULATOR")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Result",
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(resultText, style: kResultsTextStyle),
                    Text(bmiText, style:TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold) ),
                    Text(interpretationText, style: TextStyle(fontSize: 22.0), textAlign: TextAlign.center,),
                  ],
                ),
              )
            ),
            Expanded(
              child: BottomButton(title: "RECALCULATE", route:(){
                Navigator.pop(context);
              }),
            ),
          ],
        ));
  }
}
