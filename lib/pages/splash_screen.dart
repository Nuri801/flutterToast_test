import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toast/pages/home_page.dart';

// class Splash extends StatefulWidget {
//   const Splash({Key? key}) : super(key: key);
//
//   @override
//   State<Splash> createState() => _SplashState();
// }
//
// class _SplashState extends State<Splash> {
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _navigatetoHome();
//   }
//
//   _navigatetoHome() async {
//     await Future.delayed(Duration(milliseconds: 500));
//     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Image.asset('lib/assets/images/Screen Shot 2022-12-21 at 5.46.50 PM.png'),
//     );
//   }
// }

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 700,
      splash: 'lib/assets/images/Screen Shot 2022-12-21 at 6.04.09 PM.png',
      nextScreen: HomePage(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}

