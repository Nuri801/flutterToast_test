import 'package:flutter/material.dart';
import 'package:flutter_toast/assets/constant_styles.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.buttonText, required this.onPressed});

  String buttonText;
  void Function() onPressed;

  late double deviceWidth;
  late double deviceHeight;

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: MaterialButton(
        height: 45,
        minWidth: deviceWidth * 0.9,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60)
        ),
        color: kButtonColor,
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: kButtonTextStyle,
        ),
      ),
    );
  }
}
