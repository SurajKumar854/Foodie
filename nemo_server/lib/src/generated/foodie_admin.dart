/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class FoodieAdmin extends _i1.TableRow {
  FoodieAdmin._({
    int? id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.countryCode,
    required this.mobileNo,
    required this.password,
    required this.country,
    required this.isAccountVerified,
  }) : super(id);

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

  static final t = FoodieAdminTable();

  static const db = FoodieAdminRepository._();

  String firstName;

  String lastName;

  String email;

  String countryCode;

  String mobileNo;

  String password;

  String country;

  bool isAccountVerified;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
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

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'firstName':
        firstName = value;
        return;
      case 'lastName':
        lastName = value;
        return;
      case 'email':
        email = value;
        return;
      case 'countryCode':
        countryCode = value;
        return;
      case 'mobileNo':
        mobileNo = value;
        return;
      case 'password':
        password = value;
        return;
      case 'country':
        country = value;
        return;
      case 'isAccountVerified':
        isAccountVerified = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<FoodieAdmin>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FoodieAdminTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<FoodieAdmin>(
      where: where != null ? where(FoodieAdmin.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<FoodieAdmin?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FoodieAdminTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<FoodieAdmin>(
      where: where != null ? where(FoodieAdmin.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<FoodieAdmin?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<FoodieAdmin>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FoodieAdminTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<FoodieAdmin>(
      where: where(FoodieAdmin.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    FoodieAdmin row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    FoodieAdmin row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    FoodieAdmin row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FoodieAdminTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<FoodieAdmin>(
      where: where != null ? where(FoodieAdmin.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static FoodieAdminInclude include() {
    return FoodieAdminInclude._();
  }

  static FoodieAdminIncludeList includeList({
    _i1.WhereExpressionBuilder<FoodieAdminTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FoodieAdminTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FoodieAdminTable>? orderByList,
    FoodieAdminInclude? include,
  }) {
    return FoodieAdminIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(FoodieAdmin.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(FoodieAdmin.t),
      include: include,
    );
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

class FoodieAdminTable extends _i1.Table {
  FoodieAdminTable({super.tableRelation}) : super(tableName: 'foodie_admin') {
    firstName = _i1.ColumnString(
      'firstName',
      this,
    );
    lastName = _i1.ColumnString(
      'lastName',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    countryCode = _i1.ColumnString(
      'countryCode',
      this,
    );
    mobileNo = _i1.ColumnString(
      'mobileNo',
      this,
    );
    password = _i1.ColumnString(
      'password',
      this,
    );
    country = _i1.ColumnString(
      'country',
      this,
    );
    isAccountVerified = _i1.ColumnBool(
      'isAccountVerified',
      this,
    );
  }

  late final _i1.ColumnString firstName;

  late final _i1.ColumnString lastName;

  late final _i1.ColumnString email;

  late final _i1.ColumnString countryCode;

  late final _i1.ColumnString mobileNo;

  late final _i1.ColumnString password;

  late final _i1.ColumnString country;

  late final _i1.ColumnBool isAccountVerified;

  @override
  List<_i1.Column> get columns => [
        id,
        firstName,
        lastName,
        email,
        countryCode,
        mobileNo,
        password,
        country,
        isAccountVerified,
      ];
}

@Deprecated('Use FoodieAdminTable.t instead.')
FoodieAdminTable tFoodieAdmin = FoodieAdminTable();

class FoodieAdminInclude extends _i1.IncludeObject {
  FoodieAdminInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => FoodieAdmin.t;
}

class FoodieAdminIncludeList extends _i1.IncludeList {
  FoodieAdminIncludeList._({
    _i1.WhereExpressionBuilder<FoodieAdminTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(FoodieAdmin.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => FoodieAdmin.t;
}

class FoodieAdminRepository {
  const FoodieAdminRepository._();

  Future<List<FoodieAdmin>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FoodieAdminTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FoodieAdminTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FoodieAdminTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<FoodieAdmin>(
      where: where?.call(FoodieAdmin.t),
      orderBy: orderBy?.call(FoodieAdmin.t),
      orderByList: orderByList?.call(FoodieAdmin.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<FoodieAdmin?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FoodieAdminTable>? where,
    int? offset,
    _i1.OrderByBuilder<FoodieAdminTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FoodieAdminTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<FoodieAdmin>(
      where: where?.call(FoodieAdmin.t),
      orderBy: orderBy?.call(FoodieAdmin.t),
      orderByList: orderByList?.call(FoodieAdmin.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<FoodieAdmin?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<FoodieAdmin>(
      id,
      transaction: transaction,
    );
  }

  Future<List<FoodieAdmin>> insert(
    _i1.Session session,
    List<FoodieAdmin> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<FoodieAdmin>(
      rows,
      transaction: transaction,
    );
  }

  Future<FoodieAdmin> insertRow(
    _i1.Session session,
    FoodieAdmin row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<FoodieAdmin>(
      row,
      transaction: transaction,
    );
  }

  Future<List<FoodieAdmin>> update(
    _i1.Session session,
    List<FoodieAdmin> rows, {
    _i1.ColumnSelections<FoodieAdminTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<FoodieAdmin>(
      rows,
      columns: columns?.call(FoodieAdmin.t),
      transaction: transaction,
    );
  }

  Future<FoodieAdmin> updateRow(
    _i1.Session session,
    FoodieAdmin row, {
    _i1.ColumnSelections<FoodieAdminTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<FoodieAdmin>(
      row,
      columns: columns?.call(FoodieAdmin.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<FoodieAdmin> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<FoodieAdmin>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    FoodieAdmin row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<FoodieAdmin>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FoodieAdminTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<FoodieAdmin>(
      where: where(FoodieAdmin.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FoodieAdminTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<FoodieAdmin>(
      where: where?.call(FoodieAdmin.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
