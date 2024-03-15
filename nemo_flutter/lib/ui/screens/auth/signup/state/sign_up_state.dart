

class SignUpState {

}

class SignUpInitial extends SignUpState{
}

class SignUpLoading extends SignUpState{
}

class SignUpFail extends SignUpState{
  String message;
  SignUpFail({required this.message});

}

class SignUpSuccess extends SignUpState{
  String message;
  SignUpSuccess({required this.message});
}
