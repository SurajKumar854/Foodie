/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'example.dart' as _i2;
import 'food_whale_users.dart' as _i3;
import 'foodie_admin.dart' as _i4;
import 'foodie_restaurants.dart' as _i5;
import 'notes.dart' as _i6;
import 'response.dart' as _i7;
export 'example.dart';
export 'food_whale_users.dart';
export 'foodie_admin.dart';
export 'foodie_restaurants.dart';
export 'notes.dart';
export 'response.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Example) {
      return _i2.Example.fromJson(data, this) as T;
    }
    if (t == _i3.FoodWhaleUser) {
      return _i3.FoodWhaleUser.fromJson(data, this) as T;
    }
    if (t == _i4.FoodieAdmin) {
      return _i4.FoodieAdmin.fromJson(data, this) as T;
    }
    if (t == _i5.FoodieRestaurants) {
      return _i5.FoodieRestaurants.fromJson(data, this) as T;
    }
    if (t == _i6.Notes) {
      return _i6.Notes.fromJson(data, this) as T;
    }
    if (t == _i7.Response) {
      return _i7.Response.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Example?>()) {
      return (data != null ? _i2.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.FoodWhaleUser?>()) {
      return (data != null ? _i3.FoodWhaleUser.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i4.FoodieAdmin?>()) {
      return (data != null ? _i4.FoodieAdmin.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.FoodieRestaurants?>()) {
      return (data != null ? _i5.FoodieRestaurants.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i6.Notes?>()) {
      return (data != null ? _i6.Notes.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Response?>()) {
      return (data != null ? _i7.Response.fromJson(data, this) : null) as T;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Example) {
      return 'Example';
    }
    if (data is _i3.FoodWhaleUser) {
      return 'FoodWhaleUser';
    }
    if (data is _i4.FoodieAdmin) {
      return 'FoodieAdmin';
    }
    if (data is _i5.FoodieRestaurants) {
      return 'FoodieRestaurants';
    }
    if (data is _i6.Notes) {
      return 'Notes';
    }
    if (data is _i7.Response) {
      return 'Response';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Example') {
      return deserialize<_i2.Example>(data['data']);
    }
    if (data['className'] == 'FoodWhaleUser') {
      return deserialize<_i3.FoodWhaleUser>(data['data']);
    }
    if (data['className'] == 'FoodieAdmin') {
      return deserialize<_i4.FoodieAdmin>(data['data']);
    }
    if (data['className'] == 'FoodieRestaurants') {
      return deserialize<_i5.FoodieRestaurants>(data['data']);
    }
    if (data['className'] == 'Notes') {
      return deserialize<_i6.Notes>(data['data']);
    }
    if (data['className'] == 'Response') {
      return deserialize<_i7.Response>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
