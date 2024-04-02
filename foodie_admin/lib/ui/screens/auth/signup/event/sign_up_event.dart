class SignUpEvent {
  final String firstName;
  final String lastName;
  final String email;
  final String countryCode;
  final String mobile;
  final String password;
  final bool isVerified;
  final String country;

  SignUpEvent(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.countryCode,
      required this.mobile,
      this.isVerified = false,
      required this.password,
      this.country = ""});
}
