import 'dart:html';

class RestaurantSignUpEvent {
  final String restaurantName;
  final String restaurantImage;
  final String restaurantAddress;
  final double restaurantLat;
  final double restaurantLong;
  final String email;
  final String countryCode;
  final String mobile;
  final bool isVerified;

  RestaurantSignUpEvent(
      {required this.restaurantName,
      required this.email,
      required this.restaurantAddress,
      this.restaurantImage = "",
      this.restaurantLat = 17.450070232585166,
      this.restaurantLong = 78.36415397301313,
      required this.countryCode,
      required this.mobile,
      this.isVerified = false});
}
