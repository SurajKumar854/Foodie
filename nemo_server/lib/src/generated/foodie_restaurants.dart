/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class FoodieRestaurants extends _i1.TableRow {
  FoodieRestaurants._({
    int? id,
    required this.restaurantsName,
    required this.restaurantsImage,
    required this.address,
    required this.email,
    required this.countryCode,
    required this.mobileNo,
    required this.password,
    required this.addressGeoLat,
    required this.addressGeoLong,
    required this.isAccountVerified,
  }) : super(id);

  factory FoodieRestaurants({
    int? id,
    required String restaurantsName,
    required String restaurantsImage,
    required String address,
    required String email,
    required String countryCode,
    required String mobileNo,
    required String password,
    required double addressGeoLat,
    required double addressGeoLong,
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
      addressGeoLat: serializationManager
          .deserialize<double>(jsonSerialization['addressGeoLat']),
      addressGeoLong: serializationManager
          .deserialize<double>(jsonSerialization['addressGeoLong']),
      isAccountVerified: serializationManager
          .deserialize<bool>(jsonSerialization['isAccountVerified']),
    );
  }

  static final t = FoodieRestaurantsTable();

  static const db = FoodieRestaurantsRepository._();

  String restaurantsName;

  String restaurantsImage;

  String address;

  String email;

  String countryCode;

  String mobileNo;

  String password;

  double addressGeoLat;

  double addressGeoLong;

  bool isAccountVerified;

  @override
  _i1.Table get table => t;

  FoodieRestaurants copyWith({
    int? id,
    String? restaurantsName,
    String? restaurantsImage,
    String? address,
    String? email,
    String? countryCode,
    String? mobileNo,
    String? password,
    double? addressGeoLat,
    double? addressGeoLong,
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
      'addressGeoLat': addressGeoLat,
      'addressGeoLong': addressGeoLong,
      'isAccountVerified': isAccountVerified,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'restaurantsName': restaurantsName,
      'restaurantsImage': restaurantsImage,
      'address': address,
      'email': email,
      'countryCode': countryCode,
      'mobileNo': mobileNo,
      'password': password,
      'addressGeoLat': addressGeoLat,
      'addressGeoLong': addressGeoLong,
      'isAccountVerified': isAccountVerified,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'restaurantsName': restaurantsName,
      'restaurantsImage': restaurantsImage,
      'address': address,
      'email': email,
      'countryCode': countryCode,
      'mobileNo': mobileNo,
      'password': password,
      'addressGeoLat': addressGeoLat,
      'addressGeoLong': addressGeoLong,
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
      case 'restaurantsName':
        restaurantsName = value;
        return;
      case 'restaurantsImage':
        restaurantsImage = value;
        return;
      case 'address':
        address = value;
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
      case 'addressGeoLat':
        addressGeoLat = value;
        return;
      case 'addressGeoLong':
        addressGeoLong = value;
        return;
      case 'isAccountVerified':
        isAccountVerified = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<FoodieRestaurants>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FoodieRestaurantsTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<FoodieRestaurants>(
      where: where != null ? where(FoodieRestaurants.t) : null,
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
  static Future<FoodieRestaurants?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FoodieRestaurantsTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<FoodieRestaurants>(
      where: where != null ? where(FoodieRestaurants.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<FoodieRestaurants?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<FoodieRestaurants>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FoodieRestaurantsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<FoodieRestaurants>(
      where: where(FoodieRestaurants.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    FoodieRestaurants row, {
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
    FoodieRestaurants row, {
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
    FoodieRestaurants row, {
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
    _i1.WhereExpressionBuilder<FoodieRestaurantsTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<FoodieRestaurants>(
      where: where != null ? where(FoodieRestaurants.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static FoodieRestaurantsInclude include() {
    return FoodieRestaurantsInclude._();
  }

  static FoodieRestaurantsIncludeList includeList({
    _i1.WhereExpressionBuilder<FoodieRestaurantsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FoodieRestaurantsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FoodieRestaurantsTable>? orderByList,
    FoodieRestaurantsInclude? include,
  }) {
    return FoodieRestaurantsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(FoodieRestaurants.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(FoodieRestaurants.t),
      include: include,
    );
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
    required double addressGeoLat,
    required double addressGeoLong,
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
          addressGeoLat: addressGeoLat,
          addressGeoLong: addressGeoLong,
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
    double? addressGeoLat,
    double? addressGeoLong,
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
      addressGeoLat: addressGeoLat ?? this.addressGeoLat,
      addressGeoLong: addressGeoLong ?? this.addressGeoLong,
      isAccountVerified: isAccountVerified ?? this.isAccountVerified,
    );
  }
}

class FoodieRestaurantsTable extends _i1.Table {
  FoodieRestaurantsTable({super.tableRelation})
      : super(tableName: 'food_restaurants') {
    restaurantsName = _i1.ColumnString(
      'restaurantsName',
      this,
    );
    restaurantsImage = _i1.ColumnString(
      'restaurantsImage',
      this,
    );
    address = _i1.ColumnString(
      'address',
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
    addressGeoLat = _i1.ColumnDouble(
      'addressGeoLat',
      this,
    );
    addressGeoLong = _i1.ColumnDouble(
      'addressGeoLong',
      this,
    );
    isAccountVerified = _i1.ColumnBool(
      'isAccountVerified',
      this,
    );
  }

  late final _i1.ColumnString restaurantsName;

  late final _i1.ColumnString restaurantsImage;

  late final _i1.ColumnString address;

  late final _i1.ColumnString email;

  late final _i1.ColumnString countryCode;

  late final _i1.ColumnString mobileNo;

  late final _i1.ColumnString password;

  late final _i1.ColumnDouble addressGeoLat;

  late final _i1.ColumnDouble addressGeoLong;

  late final _i1.ColumnBool isAccountVerified;

  @override
  List<_i1.Column> get columns => [
        id,
        restaurantsName,
        restaurantsImage,
        address,
        email,
        countryCode,
        mobileNo,
        password,
        addressGeoLat,
        addressGeoLong,
        isAccountVerified,
      ];
}

@Deprecated('Use FoodieRestaurantsTable.t instead.')
FoodieRestaurantsTable tFoodieRestaurants = FoodieRestaurantsTable();

class FoodieRestaurantsInclude extends _i1.IncludeObject {
  FoodieRestaurantsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => FoodieRestaurants.t;
}

class FoodieRestaurantsIncludeList extends _i1.IncludeList {
  FoodieRestaurantsIncludeList._({
    _i1.WhereExpressionBuilder<FoodieRestaurantsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(FoodieRestaurants.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => FoodieRestaurants.t;
}

class FoodieRestaurantsRepository {
  const FoodieRestaurantsRepository._();

  Future<List<FoodieRestaurants>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FoodieRestaurantsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FoodieRestaurantsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FoodieRestaurantsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<FoodieRestaurants>(
      where: where?.call(FoodieRestaurants.t),
      orderBy: orderBy?.call(FoodieRestaurants.t),
      orderByList: orderByList?.call(FoodieRestaurants.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<FoodieRestaurants?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FoodieRestaurantsTable>? where,
    int? offset,
    _i1.OrderByBuilder<FoodieRestaurantsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FoodieRestaurantsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<FoodieRestaurants>(
      where: where?.call(FoodieRestaurants.t),
      orderBy: orderBy?.call(FoodieRestaurants.t),
      orderByList: orderByList?.call(FoodieRestaurants.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<FoodieRestaurants?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<FoodieRestaurants>(
      id,
      transaction: transaction,
    );
  }

  Future<List<FoodieRestaurants>> insert(
    _i1.Session session,
    List<FoodieRestaurants> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<FoodieRestaurants>(
      rows,
      transaction: transaction,
    );
  }

  Future<FoodieRestaurants> insertRow(
    _i1.Session session,
    FoodieRestaurants row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<FoodieRestaurants>(
      row,
      transaction: transaction,
    );
  }

  Future<List<FoodieRestaurants>> update(
    _i1.Session session,
    List<FoodieRestaurants> rows, {
    _i1.ColumnSelections<FoodieRestaurantsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<FoodieRestaurants>(
      rows,
      columns: columns?.call(FoodieRestaurants.t),
      transaction: transaction,
    );
  }

  Future<FoodieRestaurants> updateRow(
    _i1.Session session,
    FoodieRestaurants row, {
    _i1.ColumnSelections<FoodieRestaurantsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<FoodieRestaurants>(
      row,
      columns: columns?.call(FoodieRestaurants.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<FoodieRestaurants> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<FoodieRestaurants>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    FoodieRestaurants row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<FoodieRestaurants>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FoodieRestaurantsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<FoodieRestaurants>(
      where: where(FoodieRestaurants.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FoodieRestaurantsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<FoodieRestaurants>(
      where: where?.call(FoodieRestaurants.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
