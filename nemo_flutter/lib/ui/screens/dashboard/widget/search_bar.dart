import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/widget/colors/colors.dart';
import 'animation.dart';

class FoodieSearchbar extends StatefulWidget {
  const FoodieSearchbar({super.key});

  @override
  State<FoodieSearchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<FoodieSearchbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), // Shadow color
              spreadRadius: 3, // Spread radius
              blurRadius: 5, // Blur radius
              offset: Offset(0, 3), // Offset from the container
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              flex: 9,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Icon(Icons.search, color: primaryColor),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [

                        SizedBox(
                            height: 48,
                            child: Center(
                                child: DefaultTextStyle(
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                  child: AnimatedTextKit(
                                    repeatForever: true,
                                    animatedTexts: [
                                      RotateAnimatedOutText("Search Biryani",rotateOut: true,duration: Duration(milliseconds: 1500)),
                                      RotateAnimatedOutText("Search Ice Cream",rotateOut: true,duration: Duration(milliseconds: 1500)),
                                      RotateAnimatedOutText("Search Fried Rice",rotateOut: true,duration: Duration(milliseconds: 1500)),
                                      RotateAnimatedOutText("Search Thali",rotateOut: true,duration: Duration(milliseconds: 1500)),

                                      /*  TyperAnimatedText('Search Biryani',
                                    speed: Duration(milliseconds: 200)),
                                TyperAnimatedText('Search Ice Cream',
                                    speed: Duration(milliseconds: 200)),
                                RotateAnimatedOutText('Search Fried Rice')),
                                RotateAnimatedOutText('Search Thali')),*/

                                    ],
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                )))
                      ],)

                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
