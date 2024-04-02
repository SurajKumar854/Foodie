/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/example_endpoint.dart' as _i2;
import '../endpoints/foodhwhale_user_auth_endpoint.dart' as _i3;
import '../endpoints/foodie_admin_auth_endpoint.dart' as _i4;
import '../endpoints/foodie_restaurants_endpoint.dart' as _i5;
import '../endpoints/note_endpoint.dart' as _i6;
import 'package:nemo_server/src/generated/food_whale_users.dart' as _i7;
import 'package:nemo_server/src/generated/foodie_admin.dart' as _i8;
import 'package:nemo_server/src/generated/foodie_restaurants.dart' as _i9;
import 'package:nemo_server/src/generated/notes.dart' as _i10;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'example': _i2.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'foodWhaleUserAuth': _i3.FoodWhaleUserAuthEndpoint()
        ..initialize(
          server,
          'foodWhaleUserAuth',
          null,
        ),
      'foodieAdminAuth': _i4.FoodieAdminAuthEndpoint()
        ..initialize(
          server,
          'foodieAdminAuth',
          null,
        ),
      'foodieRestaurantsRepo': _i5.FoodieRestaurantsRepoEndpoint()
        ..initialize(
          server,
          'foodieRestaurantsRepo',
          null,
        ),
      'note': _i6.NoteEndpoint()
        ..initialize(
          server,
          'note',
          null,
        ),
    };
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        ),
        'testing': _i1.MethodConnector(
          name: 'testing',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).testing(
            session,
            params['name'],
          ),
        ),
      },
    );
    connectors['foodWhaleUserAuth'] = _i1.EndpointConnector(
      name: 'foodWhaleUserAuth',
      endpoint: endpoints['foodWhaleUserAuth']!,
      methodConnectors: {
        'signup': _i1.MethodConnector(
          name: 'signup',
          params: {
            'foodWhaleUser': _i1.ParameterDescription(
              name: 'foodWhaleUser',
              type: _i1.getType<_i7.FoodWhaleUser>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodWhaleUserAuth'] as _i3.FoodWhaleUserAuthEndpoint)
                  .signup(
            session,
            params['foodWhaleUser'],
          ),
        ),
        'isEmailExist': _i1.MethodConnector(
          name: 'isEmailExist',
          params: {
            'emailParam': _i1.ParameterDescription(
              name: 'emailParam',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodWhaleUserAuth'] as _i3.FoodWhaleUserAuthEndpoint)
                  .isEmailExist(
            session,
            params['emailParam'],
          ),
        ),
        'isPhoneExist': _i1.MethodConnector(
          name: 'isPhoneExist',
          params: {
            'countryCodeParam': _i1.ParameterDescription(
              name: 'countryCodeParam',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'phoneParam': _i1.ParameterDescription(
              name: 'phoneParam',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodWhaleUserAuth'] as _i3.FoodWhaleUserAuthEndpoint)
                  .isPhoneExist(
            session,
            params['countryCodeParam'],
            params['phoneParam'],
          ),
        ),
        'sendResetPasswordLink': _i1.MethodConnector(
          name: 'sendResetPasswordLink',
          params: {
            'emailParam': _i1.ParameterDescription(
              name: 'emailParam',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodWhaleUserAuth'] as _i3.FoodWhaleUserAuthEndpoint)
                  .sendResetPasswordLink(
            session,
            params['emailParam'],
          ),
        ),
        'sendAccountVerifyOTPLink': _i1.MethodConnector(
          name: 'sendAccountVerifyOTPLink',
          params: {
            'emailParam': _i1.ParameterDescription(
              name: 'emailParam',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodWhaleUserAuth'] as _i3.FoodWhaleUserAuthEndpoint)
                  .sendAccountVerifyOTPLink(
            session,
            params['emailParam'],
          ),
        ),
        'signIn': _i1.MethodConnector(
          name: 'signIn',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodWhaleUserAuth'] as _i3.FoodWhaleUserAuthEndpoint)
                  .signIn(
            session,
            params['email'],
            params['password'],
          ),
        ),
        'createNewPassword': _i1.MethodConnector(
          name: 'createNewPassword',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodWhaleUserAuth'] as _i3.FoodWhaleUserAuthEndpoint)
                  .createNewPassword(
            session,
            params['email'],
            params['password'],
          ),
        ),
        'verifyUserAccount': _i1.MethodConnector(
          name: 'verifyUserAccount',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'generatedOTP': _i1.ParameterDescription(
              name: 'generatedOTP',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'enteredOTP': _i1.ParameterDescription(
              name: 'enteredOTP',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodWhaleUserAuth'] as _i3.FoodWhaleUserAuthEndpoint)
                  .verifyUserAccount(
            session,
            params['email'],
            params['generatedOTP'],
            params['enteredOTP'],
          ),
        ),
      },
    );
    connectors['foodieAdminAuth'] = _i1.EndpointConnector(
      name: 'foodieAdminAuth',
      endpoint: endpoints['foodieAdminAuth']!,
      methodConnectors: {
        'signup': _i1.MethodConnector(
          name: 'signup',
          params: {
            'foodieAdmin': _i1.ParameterDescription(
              name: 'foodieAdmin',
              type: _i1.getType<_i8.FoodieAdmin>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodieAdminAuth'] as _i4.FoodieAdminAuthEndpoint)
                  .signup(
            session,
            params['foodieAdmin'],
          ),
        ),
        'isEmailExist': _i1.MethodConnector(
          name: 'isEmailExist',
          params: {
            'emailParam': _i1.ParameterDescription(
              name: 'emailParam',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodieAdminAuth'] as _i4.FoodieAdminAuthEndpoint)
                  .isEmailExist(
            session,
            params['emailParam'],
          ),
        ),
        'isPhoneExist': _i1.MethodConnector(
          name: 'isPhoneExist',
          params: {
            'countryCodeParam': _i1.ParameterDescription(
              name: 'countryCodeParam',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'phoneParam': _i1.ParameterDescription(
              name: 'phoneParam',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodieAdminAuth'] as _i4.FoodieAdminAuthEndpoint)
                  .isPhoneExist(
            session,
            params['countryCodeParam'],
            params['phoneParam'],
          ),
        ),
        'sendResetPasswordLink': _i1.MethodConnector(
          name: 'sendResetPasswordLink',
          params: {
            'emailParam': _i1.ParameterDescription(
              name: 'emailParam',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodieAdminAuth'] as _i4.FoodieAdminAuthEndpoint)
                  .sendResetPasswordLink(
            session,
            params['emailParam'],
          ),
        ),
        'sendAccountVerifyOTPLink': _i1.MethodConnector(
          name: 'sendAccountVerifyOTPLink',
          params: {
            'emailParam': _i1.ParameterDescription(
              name: 'emailParam',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodieAdminAuth'] as _i4.FoodieAdminAuthEndpoint)
                  .sendAccountVerifyOTPLink(
            session,
            params['emailParam'],
          ),
        ),
        'signIn': _i1.MethodConnector(
          name: 'signIn',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodieAdminAuth'] as _i4.FoodieAdminAuthEndpoint)
                  .signIn(
            session,
            params['email'],
            params['password'],
          ),
        ),
        'createNewPassword': _i1.MethodConnector(
          name: 'createNewPassword',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodieAdminAuth'] as _i4.FoodieAdminAuthEndpoint)
                  .createNewPassword(
            session,
            params['email'],
            params['password'],
          ),
        ),
        'verifyUserAccount': _i1.MethodConnector(
          name: 'verifyUserAccount',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'generatedOTP': _i1.ParameterDescription(
              name: 'generatedOTP',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'enteredOTP': _i1.ParameterDescription(
              name: 'enteredOTP',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodieAdminAuth'] as _i4.FoodieAdminAuthEndpoint)
                  .verifyUserAccount(
            session,
            params['email'],
            params['generatedOTP'],
            params['enteredOTP'],
          ),
        ),
      },
    );
    connectors['foodieRestaurantsRepo'] = _i1.EndpointConnector(
      name: 'foodieRestaurantsRepo',
      endpoint: endpoints['foodieRestaurantsRepo']!,
      methodConnectors: {
        'signup': _i1.MethodConnector(
          name: 'signup',
          params: {
            'foodieRestaurants': _i1.ParameterDescription(
              name: 'foodieRestaurants',
              type: _i1.getType<_i9.FoodieRestaurants>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodieRestaurantsRepo']
                      as _i5.FoodieRestaurantsRepoEndpoint)
                  .signup(
            session,
            params['foodieRestaurants'],
          ),
        ),
        'isEmailExist': _i1.MethodConnector(
          name: 'isEmailExist',
          params: {
            'emailParam': _i1.ParameterDescription(
              name: 'emailParam',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodieRestaurantsRepo']
                      as _i5.FoodieRestaurantsRepoEndpoint)
                  .isEmailExist(
            session,
            params['emailParam'],
          ),
        ),
        'isPhoneExist': _i1.MethodConnector(
          name: 'isPhoneExist',
          params: {
            'countryCodeParam': _i1.ParameterDescription(
              name: 'countryCodeParam',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'phoneParam': _i1.ParameterDescription(
              name: 'phoneParam',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodieRestaurantsRepo']
                      as _i5.FoodieRestaurantsRepoEndpoint)
                  .isPhoneExist(
            session,
            params['countryCodeParam'],
            params['phoneParam'],
          ),
        ),
        'sendResetPasswordLink': _i1.MethodConnector(
          name: 'sendResetPasswordLink',
          params: {
            'emailParam': _i1.ParameterDescription(
              name: 'emailParam',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodieRestaurantsRepo']
                      as _i5.FoodieRestaurantsRepoEndpoint)
                  .sendResetPasswordLink(
            session,
            params['emailParam'],
          ),
        ),
        'sendAccountVerifyOTPLink': _i1.MethodConnector(
          name: 'sendAccountVerifyOTPLink',
          params: {
            'emailParam': _i1.ParameterDescription(
              name: 'emailParam',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodieRestaurantsRepo']
                      as _i5.FoodieRestaurantsRepoEndpoint)
                  .sendAccountVerifyOTPLink(
            session,
            params['emailParam'],
          ),
        ),
        'signIn': _i1.MethodConnector(
          name: 'signIn',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodieRestaurantsRepo']
                      as _i5.FoodieRestaurantsRepoEndpoint)
                  .signIn(
            session,
            params['email'],
            params['password'],
          ),
        ),
        'createNewPassword': _i1.MethodConnector(
          name: 'createNewPassword',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodieRestaurantsRepo']
                      as _i5.FoodieRestaurantsRepoEndpoint)
                  .createNewPassword(
            session,
            params['email'],
            params['password'],
          ),
        ),
        'verifyUserAccount': _i1.MethodConnector(
          name: 'verifyUserAccount',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'generatedOTP': _i1.ParameterDescription(
              name: 'generatedOTP',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'enteredOTP': _i1.ParameterDescription(
              name: 'enteredOTP',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['foodieRestaurantsRepo']
                      as _i5.FoodieRestaurantsRepoEndpoint)
                  .verifyUserAccount(
            session,
            params['email'],
            params['generatedOTP'],
            params['enteredOTP'],
          ),
        ),
      },
    );
    connectors['note'] = _i1.EndpointConnector(
      name: 'note',
      endpoint: endpoints['note']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['note'] as _i6.NoteEndpoint).hello(
            session,
            params['name'],
          ),
        ),
        'shubham': _i1.MethodConnector(
          name: 'shubham',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['note'] as _i6.NoteEndpoint).shubham(
            session,
            params['name'],
          ),
        ),
        'suraj': _i1.MethodConnector(
          name: 'suraj',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['note'] as _i6.NoteEndpoint).suraj(
            session,
            params['name'],
          ),
        ),
        'sum': _i1.MethodConnector(
          name: 'sum',
          params: {
            'a': _i1.ParameterDescription(
              name: 'a',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'b': _i1.ParameterDescription(
              name: 'b',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['note'] as _i6.NoteEndpoint).sum(
            session,
            params['a'],
            params['b'],
          ),
        ),
        'createNote': _i1.MethodConnector(
          name: 'createNote',
          params: {
            'note': _i1.ParameterDescription(
              name: 'note',
              type: _i1.getType<_i10.Notes>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['note'] as _i6.NoteEndpoint).createNote(
            session,
            params['note'],
          ),
        ),
      },
    );
  }
}
