import 'package:flutter/material.dart';
import 'package:flutter_toast/assets/constant_styles.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.buttonText});

  String buttonText;

  late double deviceWidth;
  late double deviceHeight;

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: MaterialButton(
        height: 50,
        minWidth: deviceWidth * 0.8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60)
        ),
        color: kButtonColor,
        onPressed: () {},
        child: Text(
          buttonText,
          style: kButtonTextStyle,
        ),
      ),
    );
  }
}
