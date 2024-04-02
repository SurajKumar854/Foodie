/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:nemo_client/src/protocol/response.dart' as _i3;
import 'package:nemo_client/src/protocol/food_whale_users.dart' as _i4;
import 'package:nemo_client/src/protocol/foodie_admin.dart' as _i5;
import 'package:nemo_client/src/protocol/foodie_restaurants.dart' as _i6;
import 'package:nemo_client/src/protocol/notes.dart' as _i7;
import 'protocol.dart' as _i8;

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );

  _i2.Future<String> testing(String name) => caller.callServerEndpoint<String>(
        'example',
        'testing',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointFoodWhaleUserAuth extends _i1.EndpointRef {
  EndpointFoodWhaleUserAuth(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'foodWhaleUserAuth';

  _i2.Future<_i3.Response> signup(_i4.FoodWhaleUser foodWhaleUser) =>
      caller.callServerEndpoint<_i3.Response>(
        'foodWhaleUserAuth',
        'signup',
        {'foodWhaleUser': foodWhaleUser},
      );

  _i2.Future<bool> isEmailExist(String emailParam) =>
      caller.callServerEndpoint<bool>(
        'foodWhaleUserAuth',
        'isEmailExist',
        {'emailParam': emailParam},
      );

  _i2.Future<bool> isPhoneExist(
    String countryCodeParam,
    String phoneParam,
  ) =>
      caller.callServerEndpoint<bool>(
        'foodWhaleUserAuth',
        'isPhoneExist',
        {
          'countryCodeParam': countryCodeParam,
          'phoneParam': phoneParam,
        },
      );

  _i2.Future<_i3.Response> sendResetPasswordLink(String emailParam) =>
      caller.callServerEndpoint<_i3.Response>(
        'foodWhaleUserAuth',
        'sendResetPasswordLink',
        {'emailParam': emailParam},
      );

  _i2.Future<_i3.Response> sendAccountVerifyOTPLink(String emailParam) =>
      caller.callServerEndpoint<_i3.Response>(
        'foodWhaleUserAuth',
        'sendAccountVerifyOTPLink',
        {'emailParam': emailParam},
      );

  _i2.Future<_i4.FoodWhaleUser?> signIn(
    String email,
    String password,
  ) =>
      caller.callServerEndpoint<_i4.FoodWhaleUser?>(
        'foodWhaleUserAuth',
        'signIn',
        {
          'email': email,
          'password': password,
        },
      );

  _i2.Future<_i3.Response> createNewPassword(
    String email,
    String password,
  ) =>
      caller.callServerEndpoint<_i3.Response>(
        'foodWhaleUserAuth',
        'createNewPassword',
        {
          'email': email,
          'password': password,
        },
      );

  _i2.Future<_i3.Response> verifyUserAccount(
    String email,
    String generatedOTP,
    String enteredOTP,
  ) =>
      caller.callServerEndpoint<_i3.Response>(
        'foodWhaleUserAuth',
        'verifyUserAccount',
        {
          'email': email,
          'generatedOTP': generatedOTP,
          'enteredOTP': enteredOTP,
        },
      );
}

/// {@category Endpoint}
class EndpointFoodieAdminAuth extends _i1.EndpointRef {
  EndpointFoodieAdminAuth(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'foodieAdminAuth';

  _i2.Future<_i3.Response> signup(_i5.FoodieAdmin foodieAdmin) =>
      caller.callServerEndpoint<_i3.Response>(
        'foodieAdminAuth',
        'signup',
        {'foodieAdmin': foodieAdmin},
      );

  _i2.Future<bool> isEmailExist(String emailParam) =>
      caller.callServerEndpoint<bool>(
        'foodieAdminAuth',
        'isEmailExist',
        {'emailParam': emailParam},
      );

  _i2.Future<bool> isPhoneExist(
    String countryCodeParam,
    String phoneParam,
  ) =>
      caller.callServerEndpoint<bool>(
        'foodieAdminAuth',
        'isPhoneExist',
        {
          'countryCodeParam': countryCodeParam,
          'phoneParam': phoneParam,
        },
      );

  _i2.Future<_i3.Response> sendResetPasswordLink(String emailParam) =>
      caller.callServerEndpoint<_i3.Response>(
        'foodieAdminAuth',
        'sendResetPasswordLink',
        {'emailParam': emailParam},
      );

  _i2.Future<_i3.Response> sendAccountVerifyOTPLink(String emailParam) =>
      caller.callServerEndpoint<_i3.Response>(
        'foodieAdminAuth',
        'sendAccountVerifyOTPLink',
        {'emailParam': emailParam},
      );

  _i2.Future<_i5.FoodieAdmin?> signIn(
    String email,
    String password,
  ) =>
      caller.callServerEndpoint<_i5.FoodieAdmin?>(
        'foodieAdminAuth',
        'signIn',
        {
          'email': email,
          'password': password,
        },
      );

  _i2.Future<_i3.Response> createNewPassword(
    String email,
    String password,
  ) =>
      caller.callServerEndpoint<_i3.Response>(
        'foodieAdminAuth',
        'createNewPassword',
        {
          'email': email,
          'password': password,
        },
      );

  _i2.Future<_i3.Response> verifyUserAccount(
    String email,
    String generatedOTP,
    String enteredOTP,
  ) =>
      caller.callServerEndpoint<_i3.Response>(
        'foodieAdminAuth',
        'verifyUserAccount',
        {
          'email': email,
          'generatedOTP': generatedOTP,
          'enteredOTP': enteredOTP,
        },
      );
}

/// {@category Endpoint}
class EndpointFoodieRestaurantsRepo extends _i1.EndpointRef {
  EndpointFoodieRestaurantsRepo(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'foodieRestaurantsRepo';

  _i2.Future<_i3.Response> signup(_i6.FoodieRestaurants foodieRestaurants) =>
      caller.callServerEndpoint<_i3.Response>(
        'foodieRestaurantsRepo',
        'signup',
        {'foodieRestaurants': foodieRestaurants},
      );

  _i2.Future<bool> isEmailExist(String emailParam) =>
      caller.callServerEndpoint<bool>(
        'foodieRestaurantsRepo',
        'isEmailExist',
        {'emailParam': emailParam},
      );

  _i2.Future<bool> isPhoneExist(
    String countryCodeParam,
    String phoneParam,
  ) =>
      caller.callServerEndpoint<bool>(
        'foodieRestaurantsRepo',
        'isPhoneExist',
        {
          'countryCodeParam': countryCodeParam,
          'phoneParam': phoneParam,
        },
      );

  _i2.Future<_i3.Response> sendResetPasswordLink(String emailParam) =>
      caller.callServerEndpoint<_i3.Response>(
        'foodieRestaurantsRepo',
        'sendResetPasswordLink',
        {'emailParam': emailParam},
      );

  _i2.Future<_i3.Response> sendAccountVerifyOTPLink(String emailParam) =>
      caller.callServerEndpoint<_i3.Response>(
        'foodieRestaurantsRepo',
        'sendAccountVerifyOTPLink',
        {'emailParam': emailParam},
      );

  _i2.Future<_i6.FoodieRestaurants?> signIn(
    String email,
    String password,
  ) =>
      caller.callServerEndpoint<_i6.FoodieRestaurants?>(
        'foodieRestaurantsRepo',
        'signIn',
        {
          'email': email,
          'password': password,
        },
      );

  _i2.Future<_i3.Response> createNewPassword(
    String email,
    String password,
  ) =>
      caller.callServerEndpoint<_i3.Response>(
        'foodieRestaurantsRepo',
        'createNewPassword',
        {
          'email': email,
          'password': password,
        },
      );

  _i2.Future<_i3.Response> verifyUserAccount(
    String email,
    String generatedOTP,
    String enteredOTP,
  ) =>
      caller.callServerEndpoint<_i3.Response>(
        'foodieRestaurantsRepo',
        'verifyUserAccount',
        {
          'email': email,
          'generatedOTP': generatedOTP,
          'enteredOTP': enteredOTP,
        },
      );
}

/// {@category Endpoint}
class EndpointNote extends _i1.EndpointRef {
  EndpointNote(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'note';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'note',
        'hello',
        {'name': name},
      );

  _i2.Future<String> shubham(String name) => caller.callServerEndpoint<String>(
        'note',
        'shubham',
        {'name': name},
      );

  _i2.Future<String> suraj(String name) => caller.callServerEndpoint<String>(
        'note',
        'suraj',
        {'name': name},
      );

  _i2.Future<String> sum(
    int a,
    int b,
  ) =>
      caller.callServerEndpoint<String>(
        'note',
        'sum',
        {
          'a': a,
          'b': b,
        },
      );

  _i2.Future<void> createNote(_i7.Notes note) =>
      caller.callServerEndpoint<void>(
        'note',
        'createNote',
        {'note': note},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i8.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    example = EndpointExample(this);
    foodWhaleUserAuth = EndpointFoodWhaleUserAuth(this);
    foodieAdminAuth = EndpointFoodieAdminAuth(this);
    foodieRestaurantsRepo = EndpointFoodieRestaurantsRepo(this);
    note = EndpointNote(this);
  }

  late final EndpointExample example;

  late final EndpointFoodWhaleUserAuth foodWhaleUserAuth;

  late final EndpointFoodieAdminAuth foodieAdminAuth;

  late final EndpointFoodieRestaurantsRepo foodieRestaurantsRepo;

  late final EndpointNote note;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'foodWhaleUserAuth': foodWhaleUserAuth,
        'foodieAdminAuth': foodieAdminAuth,
        'foodieRestaurantsRepo': foodieRestaurantsRepo,
        'note': note,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
