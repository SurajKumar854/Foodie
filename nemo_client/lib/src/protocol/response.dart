/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Response extends _i1.SerializableEntity {
  Response._({
    required this.message,
    required this.status,
  });

  factory Response({
    required String message,
    required bool status,
  }) = _ResponseImpl;

  factory Response.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Response(
      message: serializationManager
          .deserialize<String>(jsonSerialization['message']),
      status:
          serializationManager.deserialize<bool>(jsonSerialization['status']),
    );
  }

  String message;

  bool status;

  Response copyWith({
    String? message,
    bool? status,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'status': status,
    };
  }
}

class _ResponseImpl extends Response {
  _ResponseImpl({
    required String message,
    required bool status,
  }) : super._(
          message: message,
          status: status,
        );

  @override
  Response copyWith({
    String? message,
    bool? status,
  }) {
    return Response(
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }
}
