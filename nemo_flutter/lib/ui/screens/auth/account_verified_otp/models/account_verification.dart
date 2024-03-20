import 'package:nemo_client/nemo_client.dart';

class AccountVerificationData {
  String otp;
  FoodWhaleUser userData;

  AccountVerificationData({required this.otp, required this.userData});
}
