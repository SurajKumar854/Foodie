

import 'package:nemo_flutter/ui/screens/auth/reset_password_otp/event/resetAuthPasswordEvent.dart';
import 'package:nemo_flutter/ui/screens/auth/reset_password_otp/event/reset_password_otp_event.dart';

class ResendOTPEvent extends ResetAuthPasswordEvent {
  String email;
  ResendOTPEvent({required this.email});
}

