/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class FoodieRestaurants extends _i1.SerializableEntity {
  FoodieRestaurants._({
    this.id,
    required this.restaurantsName,
    required this.restaurantsImage,
    required this.address,
    required this.email,
    required this.countryCode,
    required this.mobileNo,
    required this.password,
    required this.addressgeolat,
    required this.addressgeolong,
    required this.isAccountVerified,
  });

  factory FoodieRestaurants({
    int? id,
    required String restaurantsName,
    required String restaurantsImage,
    required String address,
    required String email,
    required String countryCode,
    required String mobileNo,
    required String password,
    required double addressgeolat,
    required double addressgeolong,
    required bool isAccountVerified,
  }) = _FoodieRestaurantsImpl;

  factory FoodieRestaurants.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return FoodieRestaurants(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      restaurantsName: serializationManager
          .deserialize<String>(jsonSerialization['restaurantsName']),
      restaurantsImage: serializationManager
          .deserialize<String>(jsonSerialization['restaurantsImage']),
      address: serializationManager
          .deserialize<String>(jsonSerialization['address']),
      email:
          serializationManager.deserialize<String>(jsonSerialization['email']),
      countryCode: serializationManager
          .deserialize<String>(jsonSerialization['countryCode']),
      mobileNo: serializationManager
          .deserialize<String>(jsonSerialization['mobileNo']),
      password: serializationManager
          .deserialize<String>(jsonSerialization['password']),
      addressgeolat: serializationManager
          .deserialize<double>(jsonSerialization['addressgeolat']),
      addressgeolong: serializationManager
          .deserialize<double>(jsonSerialization['addressgeolong']),
      isAccountVerified: serializationManager
          .deserialize<bool>(jsonSerialization['isAccountVerified']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String restaurantsName;

  String restaurantsImage;

  String address;

  String email;

  String countryCode;

  String mobileNo;

  String password;

  double addressgeolat;

  double addressgeolong;

  bool isAccountVerified;

  FoodieRestaurants copyWith({
    int? id,
    String? restaurantsName,
    String? restaurantsImage,
    String? address,
    String? email,
    String? countryCode,
    String? mobileNo,
    String? password,
    double? addressgeolat,
    double? addressgeolong,
    bool? isAccountVerified,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'restaurantsName': restaurantsName,
      'restaurantsImage': restaurantsImage,
      'address': address,
      'email': email,
      'countryCode': countryCode,
      'mobileNo': mobileNo,
      'password': password,
      'addressgeolat': addressgeolat,
      'addressgeolong': addressgeolong,
      'isAccountVerified': isAccountVerified,
    };
  }
}

class _Undefined {}

class _FoodieRestaurantsImpl extends FoodieRestaurants {
  _FoodieRestaurantsImpl({
    int? id,
    required String restaurantsName,
    required String restaurantsImage,
    required String address,
    required String email,
    required String countryCode,
    required String mobileNo,
    required String password,
    required double addressgeolat,
    required double addressgeolong,
    required bool isAccountVerified,
  }) : super._(
          id: id,
          restaurantsName: restaurantsName,
          restaurantsImage: restaurantsImage,
          address: address,
          email: email,
          countryCode: countryCode,
          mobileNo: mobileNo,
          password: password,
          addressgeolat: addressgeolat,
          addressgeolong: addressgeolong,
          isAccountVerified: isAccountVerified,
        );

  @override
  FoodieRestaurants copyWith({
    Object? id = _Undefined,
    String? restaurantsName,
    String? restaurantsImage,
    String? address,
    String? email,
    String? countryCode,
    String? mobileNo,
    String? password,
    double? addressgeolat,
    double? addressgeolong,
    bool? isAccountVerified,
  }) {
    return FoodieRestaurants(
      id: id is int? ? id : this.id,
      restaurantsName: restaurantsName ?? this.restaurantsName,
      restaurantsImage: restaurantsImage ?? this.restaurantsImage,
      address: address ?? this.address,
      email: email ?? this.email,
      countryCode: countryCode ?? this.countryCode,
      mobileNo: mobileNo ?? this.mobileNo,
      password: password ?? this.password,
      addressgeolat: addressgeolat ?? this.addressgeolat,
      addressgeolong: addressgeolong ?? this.addressgeolong,
      isAccountVerified: isAccountVerified ?? this.isAccountVerified,
    );
  }
}
