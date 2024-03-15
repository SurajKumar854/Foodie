import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password/bloc/reset_password_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password/event/reset_password_event.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password_otp/bloc/reset_password_otp_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password_otp/state/reset_password_otp_state.dart';
import 'package:nemo_flutter/utils/utils.dart';
import '../../../../../main.dart';

import '../../../common/widget/app_bar.dart';
import '../../../navigation/routes/routes.dart';
import '../reset_password/models/ResetPassword.dart';
import '../signin/widget/sign_in_loading_screen.dart';

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

                  }, // end onSubmit
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        }, listener: (BuildContext context, ResetPasswordOTPState state) {
          if (state is ResetPasswordOTPLoading) {
            Navigator.of(context).push(SignInLoadingScreen());
          }

          if (state is ResetPasswordOTPFail) {
            Navigator.pop(context);
            Utils.toastMessage(state.message);
          }

          if (state is ResetPasswordOTPSuccess) {
            Navigator.pop(context);
            Navigator.pushNamed(context, Routes.ONBOARD_SCREEN);
          }
        }));
  }
}
