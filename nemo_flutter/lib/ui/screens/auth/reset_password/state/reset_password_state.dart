

class ResetPasswordState {

}

class ResetPasswordInitial extends ResetPasswordState{
}

class ResetPasswordLoading extends ResetPasswordState{
}

class ResetPasswordFail extends ResetPasswordState{
  String message;

  ResetPasswordFail({required this.message});
}

class ResetPasswordSuccess extends ResetPasswordState{
  String message;
  ResetPasswordSuccess({required this.message});
}
