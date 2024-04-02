import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nemo_client/nemo_client.dart';
import 'package:foodie_admin/ui/screens/auth/signin/event/sign_in_event.dart';
import 'package:foodie_admin/ui/screens/auth/signin/state/sign_in_state.dart';
import 'package:foodie_admin/ui/screens/auth/signup/state/sign_up_state.dart';

import '../../../../../main.dart';
import '../event/sign_up_event.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpEvent>(onSignUpUserEvent);
  }

  Future<void> onSignUpUserEvent(
      SignUpEvent event, Emitter<SignUpState> emit) async {
    emit(SignUpLoading());

    await Future.delayed(Duration(seconds: 2), () async {
      try {
        var result = await client.foodieAdminAuth.signup(FoodieAdmin(
            firstName: event.firstName,
            lastName: event.lastName,
            email: event.email,
            countryCode: event.countryCode,
            mobileNo: event.mobile,
            password: event.password,
            country: event.country,
            isAccountVerified: event.isVerified));
            
            if(result.status){
             emit(SignUpSuccess(message: result.message));
            }else {
               emit(SignUpFail(message: result.message));
            }
            
        
      } catch (error) {
        print(error.toString());
        emit(SignUpFail(message: error.toString()));
      }
    });
  }
}
