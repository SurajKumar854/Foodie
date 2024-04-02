import 'package:nemo_client/nemo_client.dart';

class SignInState {}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInFail extends SignInState {}

class SignInSuccess extends SignInState {
  FoodieAdmin foodieAdmin;

  SignInSuccess({required this.foodieAdmin});
}

class SignInAccountVerifySuccess extends SignInState {
  FoodieAdmin foodieAdmin;
  String otp;

  SignInAccountVerifySuccess({required this.foodieAdmin, required this.otp});
}
