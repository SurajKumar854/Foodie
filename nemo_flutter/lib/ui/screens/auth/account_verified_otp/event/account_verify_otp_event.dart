class AccountVerifyOtpEvent {
  String email;
  String otp;
  String enteredOTP;

  AccountVerifyOtpEvent({required this.email, required this.otp,required this.enteredOTP});
}
