import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie_admin/ui/screens/auth/create_new_password/event/create_new_password_event.dart';
import 'package:foodie_admin/ui/screens/auth/reset_password/event/reset_password_event.dart';
import 'package:foodie_admin/ui/screens/auth/signin/event/sign_in_event.dart';
import 'package:foodie_admin/ui/screens/auth/signin/state/sign_in_state.dart';

import '../../../../../main.dart';
import '../state/create_new_password_state.dart';

class CreateNewPasswordBloc extends Bloc<CreateNewPasswordEvent, CreateNewPasswordState> {
  CreateNewPasswordBloc() : super(CreateNewPasswordInitial()) {
    on<CreateNewPasswordEvent>(onCreateNewPasswordEvent);
  }

  Future<void> onCreateNewPasswordEvent(
      CreateNewPasswordEvent event, Emitter<CreateNewPasswordState> emit) async {
    emit(CreateNewPasswordLoading());

    await Future.delayed(Duration(seconds: 2), () async {
      try {
        var result =
            await client.foodieAdminAuth.createNewPassword(event.email, event.password);
        if (result.status) {
          emit(CreateNewPasswordSuccess(message: result.message));
        } else {
          emit(CreateNewPasswordFail(message: result.message));
        }
      } catch (error) {
        emit(CreateNewPasswordFail(
            message: "Some Error Occurred. Please try later"));
      }
    });
  }
}
