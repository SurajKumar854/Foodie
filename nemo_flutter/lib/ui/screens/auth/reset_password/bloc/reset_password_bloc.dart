import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password/event/reset_password_event.dart';
import 'package:nemo_flutter/ui/screens/auth/signin/event/sign_in_event.dart';
import 'package:nemo_flutter/ui/screens/auth/signin/state/sign_in_state.dart';

import '../../../../../main.dart';
import '../state/sign_in_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc() : super(ResetPasswordInitial()) {
    on<ResetPasswordEvent>(onResetPasswordEvent);
  }

  Future<void> onResetPasswordEvent(
      ResetPasswordEvent event, Emitter<ResetPasswordState> emit) async {
    emit(ResetPasswordLoading());

    await Future.delayed(Duration(seconds: 2), () async {
      try {
        var result =
            await client.foodWhaleUserAuth.sendResetPasswordLink(event.email);
        if (result.status) {
          emit(ResetPasswordSuccess(message: result.message));
        } else {
          emit(ResetPasswordFail(message: result.message));
        }
      } catch (error) {
        emit(ResetPasswordFail(
            message: "Some Error Occurred. Please try later"));
      }
    });
  }
}
