import 'package:flutter/material.dart';
import '../constants.dart';
import '../screens/result_page.dart';


class BottomButton extends StatelessWidget {

  BottomButton({required this.onTap, required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ResultsPage(interpretation: '', bmiResult: '', resultText: '',)),
        );
      },
      child: Container(

        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 14),
        width: double.infinity,
        height: kBottomContainerHeight,

        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}