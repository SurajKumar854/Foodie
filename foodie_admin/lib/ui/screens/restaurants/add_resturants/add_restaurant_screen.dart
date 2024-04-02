

import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie_admin/ui/common/colors/colors.dart';
import 'package:foodie_admin/ui/screens/restaurants/add_resturants/event/restaurant_signup_event.dart';
import 'package:foodie_admin/ui/screens/restaurants/add_resturants/state/restaurant_sign_up_state.dart';

import '../../../../country_code_picker/country_code_picker.dart';
import '../../../../utils/utils.dart';
import '../../../common/widget/app_bar.dart';
import '../../../navigation/routes/routes.dart';
import '../../auth/signin/widget/sign_in_loading_screen.dart';
import '../../auth/signup/bloc/sign_up_bloc.dart';
import '../../auth/signup/event/sign_up_event.dart';
import '../../auth/signup/state/sign_up_state.dart';
import 'bloc/restaurant_signup_bloc.dart';

class AddRestaurantScreen extends StatefulWidget {
  const AddRestaurantScreen({super.key});

  @override
  State<AddRestaurantScreen> createState() => _AddRestaurantScreenState();
}

class _AddRestaurantScreenState extends State<AddRestaurantScreen> {
  double bodyPadding = 16;
  var restaurantName = TextEditingController();
  var restaurantAddress = TextEditingController();
  var firstName = TextEditingController();
  var lastName = TextEditingController();
  var emailTC = TextEditingController();
  var mobileTC = TextEditingController();
  var passwordTC = TextEditingController();
  var cPasswordTC = TextEditingController();

  var country = "";
  var countryCode = "";

  var passwordVisible = true;
  var cPasswordVisible = true;
  var isRegisterBtnEnable = false;

  var errorMsgCPassword;
  var errorMsgPassword;
  var errorMsgEmail;

  String titleBar = "Add Restaurant";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: FoodieAppbar(title: titleBar),
        body: BlocConsumer<RestaurantSignUpBloc, RestaurantSignUpState>(
            builder: (BuildContext context, RestaurantSignUpState state) {
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
                                  "Restaurant Name",
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
                                        controller: restaurantName,
                                        decoration: InputDecoration(
                                            hintStyle: TextStyle(
                                                fontSize: 16, color: Colors.grey),
                                            hintText: "Enter restaurant name.",
                                            border: InputBorder.none)))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Restaurant Address",
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
                                        controller: restaurantAddress,
                                        decoration: InputDecoration(
                                            hintStyle: TextStyle(
                                                fontSize: 16, color: Colors.grey),
                                            hintText: "Enter restaurant address.",
                                            border: InputBorder.none)))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Email",
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
                                            if (!Utils.isEmailValid(value)) {
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
                                          onInit: (mcountryCode) {
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
                              height: 30,
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(double.infinity, 54),
                                        backgroundColor: primaryColor,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(10))),
                                    onPressed: () {

                                      if (restaurantName.text.isEmpty) {
                                        Utils.toastMessage(
                                            "Please enter your Restaurant name");
                                        return;
                                      }
                                      if (restaurantAddress.text.isEmpty) {
                                        Utils.toastMessage(
                                            "Please enter your Restaurant name");
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
                                      if (!EmailValidator.validate(emailTC.text)) {
                                        Utils.toastMessage(
                                            "Please enter valid email ");
                                        return;
                                      }


                                      context.read<RestaurantSignUpBloc>().add(RestaurantSignUpEvent(
                                          email: emailTC.text,
                                          restaurantName: restaurantName.text,
                                          restaurantAddress: restaurantAddress.text,
                                          countryCode: countryCode,
                                          mobile: mobileTC.text));
                                    },
                                    child: Container(
                                        child: Text(
                                          "Submit",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 18),
                                        )))
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),

                          ],
                        ))),
              );
            }, listener: (BuildContext context, RestaurantSignUpState state) {
          if (state is RestaurantSignUpLoading) {
            Navigator.of(context).push(SignInLoadingScreen());
          }

          if (state is RestaurantSignUpFail) {
            Navigator.pop(context);
            Utils.toastMessage(state.message);
          }

          if (state is RestaurantSignUpSuccess) {
            Navigator.pop(context);
            Utils.toastMessage(state.message);
            Navigator.pushNamed(context, Routes.DASHBOARD_SCREEN);
          }
        }));
  }
}
