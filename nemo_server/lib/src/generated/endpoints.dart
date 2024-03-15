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
import '../endpoints/note_endpoint.dart' as _i4;
import 'package:nemo_server/src/generated/food_whale_users.dart' as _i5;
import 'package:nemo_server/src/generated/notes.dart' as _i6;

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
      'note': _i4.NoteEndpoint()
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
              type: _i1.getType<_i5.FoodWhaleUser>(),
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
              (endpoints['note'] as _i4.NoteEndpoint).hello(
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
              (endpoints['note'] as _i4.NoteEndpoint).shubham(
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
              (endpoints['note'] as _i4.NoteEndpoint).suraj(
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
              (endpoints['note'] as _i4.NoteEndpoint).sum(
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
              type: _i1.getType<_i6.Notes>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['note'] as _i4.NoteEndpoint).createNote(
            session,
            params['note'],
          ),
        ),
      },
    );
  }
}
