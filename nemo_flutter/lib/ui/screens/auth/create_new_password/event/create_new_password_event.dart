

class CreateNewPasswordEvent {
  String password;
  String cPassword;
  String email;
  CreateNewPasswordEvent({required this.email,required this.cPassword,required this.password});
}

