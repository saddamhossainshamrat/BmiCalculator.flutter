import 'package:flutter/material.dart';
import 'package:bmi/buttomButton.dart';
import 'package:bmi/constant.dart';
import 'package:bmi/customcard.dart';

class Result extends StatelessWidget {
  Result(this.bmiText, this.bmiResult, this.bmiCom);
  final String bmiText;
  final String bmiResult;
  final String bmiCom;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: kNumberText,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CustomCard(
              colour: kactiveColor,
              conChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    bmiResult,
                    style: TextStyle(
                      color: kbottomContainerColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Center(
                    child: Text(
                      bmiText,
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  Text(
                    bmiCom,
                    style: kNumberText,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Saddam Hossain Shamrat',
                    style: TextStyle(fontSize: 14, color: Colors.amber),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
          bottomButton("RE - CALCULATE", () {
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
