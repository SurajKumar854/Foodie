import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/signin/event/sign_in_event.dart';
import 'package:nemo_flutter/ui/screens/auth/signin/state/sign_in_state.dart';

import '../../../../../main.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitial()) {
    on<SignInEvent>(onSignUserEvent);
  }

  Future<void> onSignUserEvent(
      SignInEvent event, Emitter<SignInState> emit) async {
    emit(SignInLoading());

    await Future.delayed(Duration(seconds: 2), () async {
      var result =
          await client.foodWhaleUserAuth.signIn(event.email, event.password);

      try {
        if (result == null) {
          emit(SignInFail());
        } else {
          if (!result.isAccountVerified) {
            String? otp = await sendUserVerificationCodeEmail(result.email);
            if (otp != null) {
              emit(SignInAccountVerifySuccess(foodWhaleUser: result, otp: otp));
            } else {
              print("Fail to send account verification email");
              emit(SignInFail());
            }
          } else {
            emit(SignInSuccess(foodWhaleUser: result));
          }
        }
      } catch (error) {
        print(error);
        emit(SignInFail());
      }
    });
  }

  Future<String?> sendUserVerificationCodeEmail(String email) async {
    var result = await client.foodWhaleUserAuth.sendAccountVerifyOTPLink(email);
    if (result.status) {
      return result.message;
    } else {
      return null;
    }
  }
}
