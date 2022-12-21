import 'package:flutter/material.dart';
import 'package:flutter_toast/assets/common_widgets/custom_button.dart';
import 'package:flutter_toast/assets/constant_styles.dart';

class HomePage extends StatelessWidget {

  late double deviceWidth;
  late double deviceHeight;

  @override
  Widget build(BuildContext context) {

    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;

    return homePageUI();
  }

  Widget homePageUI() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Toast', style: kAppBarTextStyle,),
      ),
      body: Container(
        height: deviceHeight,
        width: deviceHeight,
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomButton(buttonText: 'show toast'),
            CustomButton(buttonText: 'center toast'),
            CustomButton(buttonText: 'Red color toast'),
            CustomButton(buttonText: 'Top toast'),
            CustomButton(buttonText: 'Longer toast'),
            CustomButton(buttonText: 'tex color'),
          ],
        ),
      ),
    );
  }

}

