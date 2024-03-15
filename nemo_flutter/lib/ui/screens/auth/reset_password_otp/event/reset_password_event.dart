class ResetPasswordOTPEvent {
  String email;
  String otp;
  String enteredOTP;

  ResetPasswordOTPEvent({required this.email, required this.otp,required this.enteredOTP});
}
