

import 'package:foodie_admin/ui/screens/auth/reset_password_otp/event/resetAuthPasswordEvent.dart';

class ResetPasswordEvent  extends ResetAuthPasswordEvent {
  String email;
  ResetPasswordEvent({required this.email});
}

