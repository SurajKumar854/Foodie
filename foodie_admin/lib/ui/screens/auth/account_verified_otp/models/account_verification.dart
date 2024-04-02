import 'package:nemo_client/nemo_client.dart';

class AccountVerificationData {
  String otp;
  FoodieAdmin userData;

  AccountVerificationData({required this.otp, required this.userData});
}
