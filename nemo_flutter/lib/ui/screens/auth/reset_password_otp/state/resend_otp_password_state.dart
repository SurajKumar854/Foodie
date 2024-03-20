
import 'package:nemo_flutter/ui/screens/auth/reset_password_otp/state/reset_password_otp_state.dart';

class ResendPasswordOTPLoading extends ResetPasswordOTPState{
}
class ResendPasswordOTPSuccess extends ResetPasswordOTPState{
  String otp;

  ResendPasswordOTPSuccess(this.otp);
}
class ResendPasswordOTPFail extends ResetPasswordOTPState{
  String message;

  ResendPasswordOTPFail(this.message);
}