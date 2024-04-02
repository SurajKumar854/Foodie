import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:foodie_admin/ui/screens/auth/account_verified_otp/bloc/account_verify_bloc.dart';
import 'package:foodie_admin/ui/screens/auth/account_verified_otp/models/account_verification.dart';
import 'package:foodie_admin/ui/screens/auth/account_verified_otp/state/account_verify_state.dart';
import 'package:foodie_admin/ui/screens/auth/reset_password/bloc/reset_password_bloc.dart';
import 'package:foodie_admin/ui/screens/auth/reset_password/event/reset_password_event.dart';
import 'package:foodie_admin/ui/screens/auth/reset_password_otp/bloc/reset_password_otp_bloc.dart';
import 'package:foodie_admin/ui/screens/auth/reset_password_otp/state/reset_password_otp_state.dart';
import 'package:foodie_admin/utils/utils.dart';
import '../../../../../main.dart';

import '../../../common/widget/app_bar.dart';
import '../../../navigation/routes/routes.dart';
import '../reset_password/models/ResetPassword.dart';
import '../signin/widget/sign_in_loading_screen.dart';
import 'event/account_verify_otp_event.dart';

class AccountVerifyOtpScreen extends StatefulWidget {
  const AccountVerifyOtpScreen({super.key});

  @override
  State<AccountVerifyOtpScreen> createState() => _AccountVerifyOtpScreen();
}

class _AccountVerifyOtpScreen extends State<AccountVerifyOtpScreen> {
  String titleBar = "Verify Account";
  double bodyPadding = 16;
  var emailTC = TextEditingController();
  var errorEmailMsg;
  String email = "";
  String otp = "";
  AccountVerificationData? accountVerificationData;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    accountVerificationData = ModalRoute.of(context)!.settings.arguments as AccountVerificationData;
    otp = accountVerificationData!.otp;
    email = accountVerificationData!.userData.email;
    return Scaffold(
        appBar: FoodieAppbar(title: titleBar),
        body: BlocConsumer<AccountVerifyBloc, AccountVerifyState>(
            builder: (BuildContext context, AccountVerifyState state) {
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
                    context.read<AccountVerifyBloc>().add(
                        AccountVerifyOtpEvent(
                            email: email,
                            otp: otp,
                            enteredOTP: verificationCode));
                  }, // end onSubmit
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        }, listener: (BuildContext context, AccountVerifyState state) {
          if (state is AccountVerifyLoading) {
            Navigator.of(context).push(SignInLoadingScreen());
          }

          if (state is AccountVerifyFail) {
            Navigator.pop(context);
            Utils.toastMessage(state.message);
          }

          if (state is AccountVerifySuccess) {
            Navigator.pop(context);
            Utils.toastMessage(state.message);
            Navigator.pushNamed(context, Routes.DASHBOARD_SCREEN);
          }
        }));
  }
}
