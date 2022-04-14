import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onPress, required this.buttonTitle});
  final void Function() onPress;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerheight,
        margin: EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 3.0,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
