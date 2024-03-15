

class ResetPasswordOTPState {

}

class ResetPasswordOTPInitial extends ResetPasswordOTPState{
}

class ResetPasswordOTPLoading extends ResetPasswordOTPState{
}

class ResetPasswordOTPFail extends ResetPasswordOTPState{
  String message;

  ResetPasswordOTPFail({required this.message});
}

class ResetPasswordOTPSuccess extends ResetPasswordOTPState{
  String email;
  ResetPasswordOTPSuccess({required this.email});
}
