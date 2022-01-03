import 'package:bmi/calculator.dart';
import 'package:flutter/material.dart';
import 'customcard.dart';
import 'iconContent.dart';
import 'constant.dart';
import 'roundbutton.dart';
import 'resultPage.dart';
import 'buttomButton.dart';

enum Gender {
  male,
  female,
}

//int height = 160;
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleColor = inactiveColor;
  // Color femaleColor = inactiveColor;
  Gender? genderselect;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    // colour: maleColor,
                    colour: genderselect == Gender.male
                        ? kinactiveColor
                        : kactiveColor,
                    conChild: IconContent(Icons.male, 'Male'),
                    press: () {
                      setState(() {
                        genderselect = Gender.male;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomCard(
                          colour: genderselect == Gender.female
                              ? kinactiveColor
                              : kactiveColor,
                          //colour: femaleColor,
                          conChild: IconContent(Icons.female, 'Female'),
                          press: () {
                            setState(() {
                              genderselect = Gender.female;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: CustomCard(
              colour: kactiveColor,
              conChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: klabelText,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          height.toString(),
                          style: kNumberText,
                        ),
                      ),
                      Text(
                        'cm',
                        style: klabelText,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Slider(
                        activeColor: kbottomContainerColor,
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        //inactiveColor: kinactiveColor,
                        onChanged: (double col) {
                          setState(() {
                            height = col.round();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    colour: kactiveColor,
                    conChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(Icons.add, () {
                              setState(() {
                                weight++;
                              });
                            }),
                            // SizedBox(
                            //   width: 2,
                            // ),
                            RoundButton(Icons.remove, () {
                              setState(() {
                                weight--;
                              });
                            })
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomCard(
                          colour: kactiveColor,
                          conChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Age',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Color(0xFF8D8E98),
                                ),
                              ),
                              Text(
                                age.toString(),
                                style: TextStyle(
                                  fontSize: 40.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundButton(Icons.add, () {
                                    setState(() {
                                      age++;
                                    });
                                  }),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  RoundButton(Icons.remove, () {
                                    setState(() {
                                      age--;
                                    });
                                  })
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomButton(
            "CALCULATE",
            () {
              Calculator cal = Calculator(weight, height);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Result(
                    cal.BmiCalculator(),
                    cal.bmiResult(),
                    cal.BmiComment(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
