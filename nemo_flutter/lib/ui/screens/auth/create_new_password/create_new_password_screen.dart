import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/create_new_password/bloc/create_new_password_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/create_new_password/state/create_new_password_state.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password/bloc/reset_password_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password/event/reset_password_event.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password/models/ResetPassword.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password/state/reset_password_state.dart';
import 'package:nemo_flutter/utils/utils.dart';
import '../../../../../main.dart';

import '../../../common/widget/app_bar.dart';
import '../../../navigation/routes/routes.dart';
import '../signin/widget/sign_in_loading_screen.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() => _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  String titleBar = "Create New Password";
  double bodyPadding = 16;
  var cPasswordTC = TextEditingController();
  var passwordTC = TextEditingController();

  var errorMsgCPassword;
  var errorMsgPassword;
  var passwordVisible = true;
  var cPasswordVisible = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: FoodieAppbar(title: titleBar),
        body: BlocConsumer<CreateNewPasswordBloc, CreateNewPasswordState>(
            builder: (BuildContext context, CreateNewPasswordState state) {
          return Container(
            padding: EdgeInsets.all(bodyPadding),
            child: Column(
              children: [
                Text(
                  "Create New Password",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
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
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: passwordVisible,
                            textInputAction: TextInputAction.done,
                            onChanged: (value) {
                              Future.delayed(
                                  Duration(milliseconds: 200), () {
                                if (!Utils.isPasswordValid(value)) {
                                  setState(() {
                                    errorMsgPassword =
                                    "Password must contain at least one uppercase letter, one lowercase letter, one digit, one special character, and be at least 8 characters long.";
                                  });
                                } else {
                                  setState(() {
                                    errorMsgPassword = null;
                                  });
                                }
                              });
                            },
                            decoration: InputDecoration(
                                errorText: errorMsgPassword,
                                hintStyle: TextStyle(
                                    fontSize: 16, color: Colors.grey),
                                hintText: "*******",
                                suffixIcon: IconButton(
                                    icon: Icon(passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        passwordVisible =
                                        !passwordVisible;
                                      });
                                    }),
                                border: InputBorder.none))),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Confirm Password",
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
                            controller: cPasswordTC,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: cPasswordVisible,
                            onChanged: (value) {
                              Future.delayed(
                                  Duration(milliseconds: 200), () {
                                if (value != passwordTC.text) {
                                  setState(() {
                                    errorMsgCPassword =
                                    'Confirm password not matching';
                                  });
                                } else {
                                  setState(() {
                                    errorMsgCPassword = null;
                                  });
                                }
                              });
                            },
                            textInputAction: TextInputAction.done,
                            onEditingComplete: () {},
                            decoration: InputDecoration(
                                errorText: errorMsgCPassword,
                                errorStyle: TextStyle(),
                                hintStyle: TextStyle(
                                    fontSize: 16, color: Colors.grey),
                                hintText: "*******",
                                suffixIcon: IconButton(
                                    icon: Icon(cPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        cPasswordVisible =
                                        !cPasswordVisible;
                                      });
                                    }),
                                border: InputBorder.none))),
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
                                borderRadius:
                                BorderRadius.circular(10))),
                        onPressed: () {

                          if (passwordTC.text.isEmpty) {
                            Utils.toastMessage(
                                "Please enter your password ");
                            return;
                          }
                          if (cPasswordTC.text.isEmpty) {
                            Utils.toastMessage(
                                "Please confirm your password ");
                            return;
                          }
                          if (!Utils.isPasswordValid(passwordTC.text)) {
                            Utils.toastMessage(
                                "Please enter valid password ");
                            return;
                          }

                          if (passwordTC.text != cPasswordTC.text) {
                            Utils.toastMessage(
                                "Please confirm your password");
                            return;
                          }

                        /*  context.read<CreateNewPasswordScreen>().add(SignUpEvent(
                              email: emailTC.text,
                              password: passwordTC.text,
                              firstName: firstName.text,
                              lastName: lastName.text,
                              countryCode: countryCode,
                              country: country,
                              mobile: mobileTC.text));*/
                        },
                        child: Container(
                            child: Text(
                              "CREATE NEW PASSWORD",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18),
                            )))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

              ],
            ),
          );
        }, listener: (BuildContext context, CreateNewPasswordState state) {
          if (state is CreateNewPasswordLoading) {
            Navigator.of(context).push(SignInLoadingScreen());
          }

          if (state is CreateNewPasswordFail) {
            Navigator.pop(context);
            Utils.toastMessage(state.message);
          }

          if (state is CreateNewPasswordSuccess) {
            Navigator.pop(context);
            Utils.toastMessage(state.message);
            Navigator.pushNamed(context, Routes.ONBOARD_SCREEN);
          }
        }));
  }
}
