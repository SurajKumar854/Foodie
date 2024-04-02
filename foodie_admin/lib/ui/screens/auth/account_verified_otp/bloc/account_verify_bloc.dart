import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie_admin/ui/screens/auth/account_verified_otp/event/account_verify_otp_event.dart';
import 'package:foodie_admin/ui/screens/auth/reset_password/event/reset_password_event.dart';
import 'package:foodie_admin/ui/screens/auth/reset_password_otp/event/reset_password_otp_event.dart';
import 'package:foodie_admin/ui/screens/auth/signin/event/sign_in_event.dart';
import 'package:foodie_admin/ui/screens/auth/signin/state/sign_in_state.dart';

import '../../../../../main.dart';
import '../state/account_verify_state.dart';

class AccountVerifyBloc
    extends Bloc<AccountVerifyOtpEvent, AccountVerifyState> {
  AccountVerifyBloc() : super(AccountVerifyInitial()) {
    on<AccountVerifyOtpEvent>(onResetPasswordOTPEvent);
  }

  Future<void> onResetPasswordOTPEvent(
      AccountVerifyOtpEvent event, Emitter<AccountVerifyState> emit) async {
    emit(AccountVerifyLoading());

    await Future.delayed(Duration(seconds: 2), () async {
      try {
        var result = await client.foodieAdminAuth
            .verifyUserAccount(event.email, event.otp, event.enteredOTP);
        if (result.status) {
          emit(AccountVerifySuccess(message: result.message));
        } else {
          emit(AccountVerifyFail(message: result.message));
        }
      } catch (error) {
        emit(AccountVerifyFail(
            message: "Some Error Occurred. Please try later"));
      }
    });
  }
}
