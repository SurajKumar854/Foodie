/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class FoodieAdmin extends _i1.SerializableEntity {
  FoodieAdmin._({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.countryCode,
    required this.mobileNo,
    required this.password,
    required this.country,
    required this.isAccountVerified,
  });

  factory FoodieAdmin({
    int? id,
    required String firstName,
    required String lastName,
    required String email,
    required String countryCode,
    required String mobileNo,
    required String password,
    required String country,
    required bool isAccountVerified,
  }) = _FoodieAdminImpl;

  factory FoodieAdmin.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return FoodieAdmin(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      firstName: serializationManager
          .deserialize<String>(jsonSerialization['firstName']),
      lastName: serializationManager
          .deserialize<String>(jsonSerialization['lastName']),
      email:
          serializationManager.deserialize<String>(jsonSerialization['email']),
      countryCode: serializationManager
          .deserialize<String>(jsonSerialization['countryCode']),
      mobileNo: serializationManager
          .deserialize<String>(jsonSerialization['mobileNo']),
      password: serializationManager
          .deserialize<String>(jsonSerialization['password']),
      country: serializationManager
          .deserialize<String>(jsonSerialization['country']),
      isAccountVerified: serializationManager
          .deserialize<bool>(jsonSerialization['isAccountVerified']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String firstName;

  String lastName;

  String email;

  String countryCode;

  String mobileNo;

  String password;

  String country;

  bool isAccountVerified;

  FoodieAdmin copyWith({
    int? id,
    String? firstName,
    String? lastName,
    String? email,
    String? countryCode,
    String? mobileNo,
    String? password,
    String? country,
    bool? isAccountVerified,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'countryCode': countryCode,
      'mobileNo': mobileNo,
      'password': password,
      'country': country,
      'isAccountVerified': isAccountVerified,
    };
  }
}

class _Undefined {}

class _FoodieAdminImpl extends FoodieAdmin {
  _FoodieAdminImpl({
    int? id,
    required String firstName,
    required String lastName,
    required String email,
    required String countryCode,
    required String mobileNo,
    required String password,
    required String country,
    required bool isAccountVerified,
  }) : super._(
          id: id,
          firstName: firstName,
          lastName: lastName,
          email: email,
          countryCode: countryCode,
          mobileNo: mobileNo,
          password: password,
          country: country,
          isAccountVerified: isAccountVerified,
        );

  @override
  FoodieAdmin copyWith({
    Object? id = _Undefined,
    String? firstName,
    String? lastName,
    String? email,
    String? countryCode,
    String? mobileNo,
    String? password,
    String? country,
    bool? isAccountVerified,
  }) {
    return FoodieAdmin(
      id: id is int? ? id : this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      countryCode: countryCode ?? this.countryCode,
      mobileNo: mobileNo ?? this.mobileNo,
      password: password ?? this.password,
      country: country ?? this.country,
      isAccountVerified: isAccountVerified ?? this.isAccountVerified,
    );
  }
}
