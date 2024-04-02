

class AccountVerifyState {

}

class AccountVerifyInitial extends AccountVerifyState{
}

class AccountVerifyLoading extends AccountVerifyState{
}

class AccountVerifyFail extends AccountVerifyState{
  String message;

  AccountVerifyFail({required this.message});
}

class AccountVerifySuccess extends AccountVerifyState{
  String message;
  AccountVerifySuccess({required this.message});
}
