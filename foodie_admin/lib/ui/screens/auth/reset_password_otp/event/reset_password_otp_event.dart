import 'package:foodie_admin/ui/screens/auth/reset_password_otp/event/resetAuthPasswordEvent.dart';

class ResetPasswordOTPEvent  extends ResetAuthPasswordEvent{
  String email;
  String otp;
  String enteredOTP;

  ResetPasswordOTPEvent({required this.email, required this.otp,required this.enteredOTP});
}
