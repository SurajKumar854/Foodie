import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:nemo_flutter/ui/screens/auth/signup/bloc/sign_up_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/signup/event/sign_up_event.dart';
import 'package:nemo_flutter/ui/screens/auth/signup/state/sign_up_state.dart';

import '../../../../country_code_picker/country_code_picker.dart';
import '../../../../utils/utils.dart';
import '../../../navigation/routes/routes.dart';
import '../signin/bloc/sign_in_bloc.dart';
import '../signin/event/sign_in_event.dart';
import '../signin/state/sign_in_state.dart';
import '../signin/widget/sign_in_loading_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  double bodyPadding = 16;
  var firstName = TextEditingController();
  var lastName = TextEditingController();
  var emailTC = TextEditingController();
  var mobileTC = TextEditingController();

  var country = "";
  var passwordTC = TextEditingController();
  var cPasswordTC = TextEditingController();
  var countryCode = "";

  var passwordVisible = true;
  var cPasswordVisible = true;
  var isRegisterBtnEnable = false;
  final RegExp emailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final RegExp passwordValid =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  var errorMsgCPassword;
  var errorMsgPassword;
  var errorMsgEmail;

  String titleBar = "Create Account";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            titleBar,
            style: TextStyle(fontFamily: "logo", fontSize: 32),
          ),
        ),
        body: BlocConsumer<SignUpBloc, SignUpState>(
            builder: (BuildContext context, SignUpState state) {
          return SingleChildScrollView(
            clipBehavior: Clip.none,
            child: Flexible(
                child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(bodyPadding),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        //first name
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "First Name",
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
                                    controller: firstName,
                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            fontSize: 16, color: Colors.grey),
                                        hintText: "Enter your first name.",
                                        border: InputBorder.none)))
                          ],
                        ),
                        //last name
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Last Name",
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
                                    controller: lastName,
                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            fontSize: 16, color: Colors.grey),
                                        hintText: "Enter your first name.",
                                        border: InputBorder.none)))
                          ],
                        ),
                        //email name
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email Address",
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
                                    onChanged: (value) {
                                      Future.delayed(
                                          Duration(milliseconds: 200), () {
                                        if (!emailValid.hasMatch(value)) {
                                          setState(() {
                                            errorMsgEmail =
                                                "Please enter valid email";
                                          });
                                        } else {
                                          setState(() {
                                            errorMsgEmail = null;
                                          });
                                        }
                                      });
                                    },
                                    decoration: InputDecoration(
                                        errorText: errorMsgEmail,
                                        hintStyle: TextStyle(
                                            fontSize: 16, color: Colors.grey),
                                        hintText: "Enter your email.",
                                        border: InputBorder.none)))
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mobile No.",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 5),
                                    decoration: BoxDecoration(
                                        color: Color(0xffEBEBEB),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: CountryCodePicker(
                                      showCountryOnly: false,
                                      initialSelection: 'IN',
                                      onInit:(mcountryCode){
                                       
                                          countryCode = mcountryCode!.dialCode!;
                                          country = mcountryCode!.code!;
                                      
                                      },
                                      onChanged: (mcountryCode) {
                                        setState(() {
                                          countryCode = mcountryCode.dialCode!;
                                          country = mcountryCode.code!;
                                        });
                                      },
                                      showOnlyCountryWhenClosed: false,
                                      alignLeft: false,
                                    )),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16),
                                        decoration: BoxDecoration(
                                            color: Color(0xffEBEBEB),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: TextField(
                                            keyboardType: TextInputType.number,
                                            controller: mobileTC,
                                            maxLength: 10,
                                            decoration: InputDecoration(
                                                counterText: "",
                                                hintStyle: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey),
                                                hintText:
                                                    "Enter your mobile no.",
                                                border: InputBorder.none))))
                              ],
                            ),
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
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: passwordVisible,
                                    textInputAction: TextInputAction.done,
                                    onChanged: (value){
                                      Future.delayed(Duration(milliseconds: 200),(){
                                        if(!passwordValid.hasMatch(value)){
                                          setState(() {
                                            errorMsgPassword="Password must contain at least one uppercase letter, one lowercase letter, one digit, one special character, and be at least 8 characters long.";
                                          });
                                        }else {
                                          setState(() {
                                            errorMsgPassword=null;
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
                                    onEditingComplete: () {
                                     
                                    },
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
                                  if (firstName.text.isEmpty) {
                                    Utils.toastMessage(
                                        "Please enter your first name");
                                    return;
                                  }
                                  if (lastName.text.isEmpty) {
                                    Utils.toastMessage(
                                        "Please enter your first name");
                                    return;
                                  }
                                  if (mobileTC.text.isEmpty) {
                                    Utils.toastMessage(
                                        "Please enter your mobile no");
                                    return;
                                  }
                                  if (emailTC.text.isEmpty) {
                                    Utils.toastMessage(
                                        "Please enter your email ");
                                    return;
                                  }
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
                                  if (!EmailValidator.validate(emailTC.text)) {
                                    Utils.toastMessage(
                                        "Please enter valid email ");
                                    return;
                                  }
                                  if (!passwordValid.hasMatch(passwordTC.text)) {
                                    Utils.toastMessage(
                                        "Please enter valid password ");
                                    return;
                                  }

                                  if (passwordTC.text!=cPasswordTC.text) {
                                    Utils.toastMessage(
                                        "Please confirm your password");
                                    return;
                                  }

                                  context.read<SignUpBloc>().add(SignUpEvent(
                                      email: emailTC.text,
                                      password: passwordTC.text,
                                      firstName: firstName.text,
                                      lastName: lastName.text,
                                      countryCode: countryCode,
                                      country: country,
                                      mobile: mobileTC.text));
                                },
                                child: Container(
                                    child: Text(
                                  "SIGN UP",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
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
                                            context, Routes.ONBOARD_SCREEN);
                                      },
                                      child: RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                            text: "Already have an account ?",
                                            style: TextStyle(
                                                color: Color(0xff646982),
                                                fontSize: 18,
                                                wordSpacing: 2,
                                                fontWeight: FontWeight.bold),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: " Sign In",
                                                  style: TextStyle(
                                                      color: Color(0xffE53935),
                                                      fontSize: 18,
                                                      wordSpacing: 2,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ]),
                                      ))
                                ])
                          ],
                        ),
                      ],
                    ))),
          );
        }, listener: (BuildContext context, SignUpState state) {
          if (state is SignUpLoading) {
            Navigator.of(context).push(SignInLoadingScreen());
          }

          if (state is SignUpFail) {
            Navigator.pop(context);
            Utils.toastMessage(state.message);
          }

          if (state is SignUpSuccess) {
            Navigator.pop(context);
            Utils.toastMessage(state.message);
            Navigator.pushNamed(context, Routes.ONBOARD_SCREEN);
          }
        }));
  }
}
