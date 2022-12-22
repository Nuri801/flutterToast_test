import 'package:flutter/gestures.dart';
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
      // appBar: AppBar(
      //   title: const Text('Flutter Toast', style: kAppBarTextStyle,),
      // ),
      body: Container(
        height: deviceHeight,
        width: deviceHeight,
        // color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            doosanLogo(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                textFormID(),
                textFormPW(),
                logInButton(),
              ],
            ),
            findPWButton(),
          ],
        ),
      ),
    );
  }

  Widget doosanLogo() {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Container(
        height: deviceHeight * 0.5,
        width: deviceWidth * 0.7,
        child: Image.asset('lib/assets/images/Screen Shot 2022-12-21 at 2.45.52 PM.png'),
      ),
    );
  }

  Widget textFormID() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          hintStyle: TextStyle(),
          hintText: 'ID',
          border: UnderlineInputBorder(),
          // helperText: 'PASSWORD'
        ),
      ),
    );
  }

  Widget textFormPW() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 40),
      child: TextFormField(
        obscureText: true,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          hintStyle: TextStyle(),
          hintText: 'PASSWORD',
          border: UnderlineInputBorder(),
          // helperText: 'PASSWORD'
        ),
      ),
    );
  }

  Widget logInButton() {
    return CustomButton(
      buttonText: 'LOGIN',
      onPressed: () {},
    );
  }

  Widget findPWButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      child: GestureDetector(
        onTap: () {print('pressed');},
        child: Text('암호를 확인하는 방법?'),
      ),
    );
  }
}
