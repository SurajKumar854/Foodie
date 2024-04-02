import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie_admin/ui/screens/auth/reset_password/event/reset_password_event.dart';
import 'package:foodie_admin/ui/screens/auth/reset_password_otp/event/resend_otp_event.dart';
import 'package:foodie_admin/ui/screens/auth/reset_password_otp/event/resetAuthPasswordEvent.dart';
import 'package:foodie_admin/ui/screens/auth/reset_password_otp/event/reset_password_otp_event.dart';
import 'package:foodie_admin/ui/screens/auth/reset_password_otp/state/resend_otp_password_state.dart';
import 'package:foodie_admin/ui/screens/auth/signin/event/sign_in_event.dart';
import 'package:foodie_admin/ui/screens/auth/signin/state/sign_in_state.dart';

import '../../../../../main.dart';
import '../state/reset_password_otp_state.dart';

class ResetPasswordOTPBloc
    extends Bloc<ResetAuthPasswordEvent, ResetPasswordOTPState> {
  ResetPasswordOTPBloc() : super(ResetPasswordOTPInitial()) {
    on<ResetPasswordOTPEvent>(onResetPasswordOTPEvent);
    on<ResendOTPEvent>(onResendPasswordOTPEvent);
  }

  Future<void> onResendPasswordOTPEvent(
      ResendOTPEvent event, Emitter<ResetPasswordOTPState> emit) async {
    emit(ResendPasswordOTPLoading());

    await Future.delayed(Duration(seconds: 2), () async {
      try {
        var result =
            await client.foodieAdminAuth.sendResetPasswordLink(event.email);
        if (result.status) {
          emit(ResendPasswordOTPSuccess(result.message));
        } else {
          emit(ResendPasswordOTPFail(result.message+event.email));
        }
      } catch (error) {
        print(error);
        emit(ResendPasswordOTPFail(error.toString()+event.email));
      }
    });
  }

  Future<void> onResetPasswordOTPEvent(
      ResetPasswordOTPEvent event, Emitter<ResetPasswordOTPState> emit) async {
    emit(ResetPasswordOTPLoading());

    await Future.delayed(Duration(seconds: 2), () async {
      try {
        var result = event.enteredOTP == event.otp;
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
