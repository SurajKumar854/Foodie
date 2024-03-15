

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SignInLoadingScreen extends ModalRoute {
  // constructor
  SignInLoadingScreen();

  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => Colors.white.withOpacity(0.8);

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      ) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Lottie.asset("assets/json/loading_anim2.json",width: 200,height: 200)
           /* Container(
              margin: EdgeInsets.symmetric(horizontal: 8.dp),
              child: SizedBox(
                  height: 10.h,
                  child: DefaultTextStyle(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: regular,
                          color: Colors.black),
                      child: AnimatedTextKit(
                        pause: Duration(seconds: 5),
                        repeatForever: true,
                        animatedTexts: [
                          loadingAnimatedFitOSText("Please wait..."),
                          loadingAnimatedFitOSText(
                              "Just a moment... we are almost there.."),
                        ],
                        onTap: () {},
                      ))),
            )*/
          ],
        ),
      ),
    );
  }



  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    // add fade animation
    return FadeTransition(
      opacity: animation,
      // add slide animation
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, -1),
          end: Offset.zero,
        ).animate(animation),
        // add scale animation
        child: ScaleTransition(
          scale: animation,
          child: child,
        ),
      ),
    );
  }
}
