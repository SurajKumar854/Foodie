import 'package:nemo_client/nemo_client.dart';

class SignInState {}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInFail extends SignInState {}

class SignInSuccess extends SignInState {
  FoodWhaleUser foodWhaleUser;

  SignInSuccess({required this.foodWhaleUser});
}

class SignInAccountVerifySuccess extends SignInState {
  FoodWhaleUser foodWhaleUser;
  String otp;

  SignInAccountVerifySuccess({required this.foodWhaleUser, required this.otp});
}
