import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sameed_ui/HomePage.dart';
import 'dart:math';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>with TickerProviderStateMixin  {

  AnimationController rotationController;
  @override
  void initState() {
    rotationController = AnimationController(duration: const Duration(milliseconds: 1000), vsync: this);
    //rotationController = AnimationController(duration: Duration(seconds: 5), upperBound: pi * 2, vsync: this);
    rotationController.forward(from: 0.0); // it starts the animation
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoanHomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child:
        RotationTransition(
            turns: Tween(begin: 1.0, end: 0.0).animate(rotationController),
            child: Image.asset('images/splash.png',fit: BoxFit.cover,)

        )
      )
    );
  }
}