import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/constants.dart';

class Iconwidget extends StatelessWidget {
  Iconwidget(this.icon, this.text);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
