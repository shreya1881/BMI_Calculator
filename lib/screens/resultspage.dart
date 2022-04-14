import 'package:bmi_calculator/components/reusablecard.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/reusablecard.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              Cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Normal BMI Range:',
                    style: TextStyle(color: Colors.grey, fontSize: 18.0),
                  ),
                  Text(
                    '18.5-25 kg/m^2',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          BottomButton(
              onPress: () {
                Navigator.pop(context);
              },
              buttonTitle: "RE-CALCULATE")
        ],
      ),
    );
  }
}
