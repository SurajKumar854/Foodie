import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:foodie_admin/ui/screens/auth/reset_password/bloc/reset_password_bloc.dart';
import 'package:foodie_admin/ui/screens/auth/reset_password/event/reset_password_event.dart';
import 'package:foodie_admin/ui/screens/auth/reset_password_otp/bloc/reset_password_otp_bloc.dart';
import 'package:foodie_admin/ui/screens/auth/reset_password_otp/event/resend_otp_event.dart';
import 'package:foodie_admin/ui/screens/auth/reset_password_otp/state/resend_otp_password_state.dart';
import 'package:foodie_admin/ui/screens/auth/reset_password_otp/state/reset_password_otp_state.dart';
import 'package:foodie_admin/utils/utils.dart';
import '../../../../../main.dart';

import '../../../common/widget/app_bar.dart';
import '../../../navigation/routes/routes.dart';
import '../reset_password/models/ResetPassword.dart';
import '../signin/widget/sign_in_loading_screen.dart';
import 'event/reset_password_otp_event.dart';

class ResetPasswordOtpScreen extends StatefulWidget {
  const ResetPasswordOtpScreen({super.key});

  @override
  State<ResetPasswordOtpScreen> createState() => _ResetPasswordOtpScreenState();
}

class _ResetPasswordOtpScreenState extends State<ResetPasswordOtpScreen> {
  String titleBar = "Forgot Password";
  double bodyPadding = 16;
  var emailTC = TextEditingController();
  var errorEmailMsg;
  String email = "";
  String otp = "";
  ResetPassword? resetPassword;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    resetPassword = ModalRoute.of(context)!.settings.arguments as ResetPassword;
    otp = resetPassword!.otp;
    email = resetPassword!.email;
    return Scaffold(
        appBar: FoodieAppbar(title: titleBar),
        body: BlocConsumer<ResetPasswordOTPBloc, ResetPasswordOTPState>(
            builder: (BuildContext context, ResetPasswordOTPState state) {
          return Container(
            padding: EdgeInsets.all(bodyPadding),
            child: Column(
              children: [
                Text(
                  "Enter Verification Code",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "A 6 Digit code has been sent to $email;",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                OtpTextField(
                  numberOfFields: 6,
                  borderColor: Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    context.read<ResetPasswordOTPBloc>().add(
                        ResetPasswordOTPEvent(
                            email: email,
                            otp: otp,
                            enteredOTP: verificationCode));
                  }, // end onSubmit
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Didn't received code?",
                          style: TextStyle(color: Colors.black),
                        )),
                    TextButton(
                        onPressed: () {
                          context
                              .read<ResetPasswordOTPBloc>()
                              .add(ResendOTPEvent(email: email));
                        },
                        child: const Text(
                          "Request again",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          );
        }, listener: (BuildContext context, ResetPasswordOTPState state) {
          if (state is ResetPasswordOTPLoading) {
            Navigator.of(context).push(SignInLoadingScreen());
          }

          if (state is ResendPasswordOTPLoading) {
            Navigator.of(context).push(SignInLoadingScreen());
          }
          if (state is ResendPasswordOTPSuccess) {

            Navigator.pop(context);
            Utils.toastMessage("OTP sent..");
          }
          if (state is ResendPasswordOTPFail) {
            Utils.toastMessage(state.message);
            Navigator.pop(context);
          }

          if (state is ResetPasswordOTPFail) {
            Navigator.pop(context);
            Utils.toastMessage(state.message);
          }

          if (state is ResetPasswordOTPSuccess) {
            Navigator.pop(context);
            Navigator.pushNamed(context, Routes.CREATE_NEW_PASSWORD_SCREEN,
                arguments: email);
          }
        }));
  }
}
