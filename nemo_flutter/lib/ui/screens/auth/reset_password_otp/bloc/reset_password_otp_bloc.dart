import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password/event/reset_password_event.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password_otp/event/reset_password_event.dart';
import 'package:nemo_flutter/ui/screens/auth/signin/event/sign_in_event.dart';
import 'package:nemo_flutter/ui/screens/auth/signin/state/sign_in_state.dart';

import '../../../../../main.dart';
import '../state/reset_password_otp_state.dart';

class ResetPasswordOTPBloc extends Bloc<ResetPasswordOTPEvent, ResetPasswordOTPState> {
  ResetPasswordOTPBloc() : super(ResetPasswordOTPInitial()) {
    on<ResetPasswordOTPEvent>(onResetPasswordOTPEvent);
  }

  Future<void> onResetPasswordOTPEvent(
      ResetPasswordOTPEvent event, Emitter<ResetPasswordOTPState> emit) async {
    emit(ResetPasswordOTPLoading());

    await Future.delayed(Duration(seconds: 2), () async {
      try {
        var result = event.enteredOTP==event.otp;
        if (result) {
          emit(ResetPasswordOTPSuccess(email: event.email));
        } else {
          emit(ResetPasswordOTPFail(message: "Incorrect Verification Code"));
        }
      } catch (error) {
        emit(ResetPasswordOTPFail(
            message: "Some Error Occurred. Please try later"));
      }
    });
  }
}
