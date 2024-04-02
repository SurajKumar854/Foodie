

class CreateNewPasswordState {

}

class CreateNewPasswordInitial extends CreateNewPasswordState{
}

class CreateNewPasswordLoading extends CreateNewPasswordState{
}

class CreateNewPasswordFail extends CreateNewPasswordState{
  String message;

  CreateNewPasswordFail({required this.message});
}

class CreateNewPasswordSuccess extends CreateNewPasswordState{
  String message;
  CreateNewPasswordSuccess({required this.message});
}
