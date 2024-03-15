import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nemo_flutter/ui/navigation/routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const int splashScreenWaitTime = 3;

  Future<void> validateSession() async {
    Future.delayed(Duration(seconds: splashScreenWaitTime), () {
      Navigator.pushReplacementNamed(context, Routes.ONBOARD_SCREEN);
    });
  }

  @override
  void initState() {
    validateSession();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.white,
        body: Container(
            child: Center(child: Lottie.asset("assets/json/splash.json",height: 200))));
  }
}
