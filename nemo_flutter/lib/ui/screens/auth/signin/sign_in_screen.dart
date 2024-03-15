import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:nemo_flutter/ui/common/widget/app_bar.dart';
import 'package:nemo_flutter/ui/navigation/routes/routes.dart';
import 'package:nemo_flutter/ui/screens/auth/signin/bloc/sign_in_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/signin/event/sign_in_event.dart';
import 'package:nemo_flutter/ui/screens/auth/signin/state/sign_in_state.dart';
import 'package:nemo_flutter/ui/screens/auth/signin/widget/sign_in_loading_screen.dart';
import 'package:nemo_flutter/utils/utils.dart';

import '../../../../main.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  double bodyPadding = 16;
  var emailTC = TextEditingController();
  var passwordTC = TextEditingController();
  var resultMessage = "";
  var title = "Foodie";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: FoodieAppbar(title: title),
        body: BlocConsumer<SignInBloc, SignInState>(
            builder: (BuildContext context, SignInState state) {
          return SingleChildScrollView(
            child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(bodyPadding),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Container(
                                height: 200,
                                child: Lottie.asset(
                                    "assets/json/onboard_anim2.json",
                                    width: 400,
                                    height: 200)))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email address",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                                color: Color(0xffEBEBEB),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextField(
                                controller: emailTC,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                    hintText: "user@gmail.com",
                                    border: InputBorder.none)))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                                color: Color(0xffEBEBEB),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextField(
                                controller: passwordTC,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                    hintText: "*******",
                                    border: InputBorder.none))),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                           InkWell(child:  Text(
                             "Forgot password?",
                             textAlign: TextAlign.end,
                             style: TextStyle(
                                 color: Colors.grey,
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold),
                           ),onTap: (){
                             Navigator.pushNamed(context, Routes.RESET_SCREEN);
                           },),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(double.infinity, 54),
                                backgroundColor: Color(0xffE53935),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {
                              context.read<SignInBloc>().add(SignInEvent(
                                  email: emailTC.text,
                                  password: passwordTC.text));
                            },
                            child: Container(
                                child: Text(
                              "SIGN IN",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )))
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, Routes.SIGN_UP_SCREEN);
                                  },
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text: "Don't have an account ?",
                                        style: TextStyle(
                                            color: Color(0xff646982),
                                            fontSize: 18,
                                            wordSpacing: 2,
                                            fontWeight: FontWeight.bold),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: " Sign Up",
                                              style: TextStyle(
                                                  color: Color(0xffE53935),
                                                  fontSize: 18,
                                                  wordSpacing: 2,
                                                  fontWeight: FontWeight.bold)),
                                        ]),
                                  ))
                            ])
                      ],
                    ),
                  ],
                )),
          );
        }, listener: (BuildContext context, SignInState state) {
          if (state is SignInLoading) {
            Navigator.of(context).push(SignInLoadingScreen());
          }

          if (state is SignInFail) {
            Navigator.pop(context);
            Utils.toastMessage("Incorrect Email/Password. Please try again");
          }

          if (state is SignInSuccess) {
            Navigator.pop(context);
            Utils.toastMessage("Login Successfully..");
            Navigator.pushNamed(context, Routes.DASHBOARD_SCREEN);
          }
        }));
  }
}
