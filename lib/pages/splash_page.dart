// ignore_for_file: prefer_const_constructors

import 'package:app_tcc/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash/flutter_animated_splash.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplash(
        type: Transition.fade,
        child: Container(
          color: Colors.white,
          child: Scaffold(
              body: Center(
                  child: LottieBuilder.network(
                      'https://assets3.lottiefiles.com/packages/lf20_v92o72md.json'))),
        ),
        curve: Curves.slowMiddle,
        navigator: LoginPage(),
        durationInSeconds: 7);
  }
}
