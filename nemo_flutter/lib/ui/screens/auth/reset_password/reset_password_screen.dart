import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password/bloc/reset_password_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password/event/reset_password_event.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password/models/ResetPassword.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password/state/reset_password_state.dart';
import 'package:nemo_flutter/utils/utils.dart';
import '../../../../../main.dart';

import '../../../common/widget/app_bar.dart';
import '../../../navigation/routes/routes.dart';
import '../signin/widget/sign_in_loading_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  String titleBar = "Forgot Password";
  double bodyPadding = 16;
  var emailTC = TextEditingController();
  var errorEmailMsg;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: FoodieAppbar(title: titleBar),
        body: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
            builder: (BuildContext context, ResetPasswordState state) {
          return Container(
            padding: EdgeInsets.all(bodyPadding),
            child: Column(
              children: [
                Text(
                  "Reset Link",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter your email address and we send you the reset link",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email address",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                            onChanged: (value) {
                              Future.delayed(Duration(milliseconds: 200), () {
                                if (!Utils.isEmailValid(value)) {
                                  setState(() {
                                    errorEmailMsg = "Please enter valid email";
                                  });
                                } else {
                                  setState(() {
                                    errorEmailMsg = null;
                                  });
                                }
                              });
                            },
                            decoration: InputDecoration(
                                errorText: errorEmailMsg,
                                hintStyle:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                                hintText: "user@gmail.com",
                                border: InputBorder.none)))
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
                          if (emailTC.text.isEmpty) {
                            setState(() {
                              errorEmailMsg = "Please enter your email";
                            });
                            return;
                          }
                          context
                              .read<ResetPasswordBloc>()
                              .add(ResetPasswordEvent(email: emailTC.text));
                        },
                        child: Container(
                            child: Text(
                          "Reset Password",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )))
                  ],
                ),
              ],
            ),
          );
        }, listener: (BuildContext context, ResetPasswordState state) {
          if (state is ResetPasswordLoading) {
            Navigator.of(context).push(SignInLoadingScreen());
          }

          if (state is ResetPasswordFail) {
            Navigator.pop(context);
            Utils.toastMessage(state.message);
          }

          if (state is ResetPasswordSuccess) {
            Navigator.pop(context);
            Navigator.pushNamed(context, Routes.RESET_OTP_SCREEN,
                arguments: ResetPassword(otp: state.message, email: emailTC.text));
          }
        }));
  }
}
