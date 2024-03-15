/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Notes extends _i1.TableRow {
  Notes._({
    int? id,
    required this.text,
  }) : super(id);

  factory Notes({
    int? id,
    required String text,
  }) = _NotesImpl;

  factory Notes.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Notes(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      text: serializationManager.deserialize<String>(jsonSerialization['text']),
    );
  }

  static final t = NotesTable();

  static const db = NotesRepository._();

  String text;

  @override
  _i1.Table get table => t;

  Notes copyWith({
    int? id,
    String? text,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'text': text,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'text': text,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'text': text,
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
      case 'text':
        text = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Notes>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotesTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Notes>(
      where: where != null ? where(Notes.t) : null,
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
  static Future<Notes?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotesTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Notes>(
      where: where != null ? where(Notes.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Notes?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Notes>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<NotesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Notes>(
      where: where(Notes.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Notes row, {
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
    Notes row, {
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
    Notes row, {
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
    _i1.WhereExpressionBuilder<NotesTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Notes>(
      where: where != null ? where(Notes.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static NotesInclude include() {
    return NotesInclude._();
  }

  static NotesIncludeList includeList({
    _i1.WhereExpressionBuilder<NotesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NotesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NotesTable>? orderByList,
    NotesInclude? include,
  }) {
    return NotesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Notes.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Notes.t),
      include: include,
    );
  }
}

class _Undefined {}

class _NotesImpl extends Notes {
  _NotesImpl({
    int? id,
    required String text,
  }) : super._(
          id: id,
          text: text,
        );

  @override
  Notes copyWith({
    Object? id = _Undefined,
    String? text,
  }) {
    return Notes(
      id: id is int? ? id : this.id,
      text: text ?? this.text,
    );
  }
}

class NotesTable extends _i1.Table {
  NotesTable({super.tableRelation}) : super(tableName: 'notes') {
    text = _i1.ColumnString(
      'text',
      this,
    );
  }

  late final _i1.ColumnString text;

  @override
  List<_i1.Column> get columns => [
        id,
        text,
      ];
}

@Deprecated('Use NotesTable.t instead.')
NotesTable tNotes = NotesTable();

class NotesInclude extends _i1.IncludeObject {
  NotesInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Notes.t;
}

class NotesIncludeList extends _i1.IncludeList {
  NotesIncludeList._({
    _i1.WhereExpressionBuilder<NotesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Notes.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Notes.t;
}

class NotesRepository {
  const NotesRepository._();

  Future<List<Notes>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NotesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NotesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Notes>(
      where: where?.call(Notes.t),
      orderBy: orderBy?.call(Notes.t),
      orderByList: orderByList?.call(Notes.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Notes?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotesTable>? where,
    int? offset,
    _i1.OrderByBuilder<NotesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NotesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Notes>(
      where: where?.call(Notes.t),
      orderBy: orderBy?.call(Notes.t),
      orderByList: orderByList?.call(Notes.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Notes?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Notes>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Notes>> insert(
    _i1.Session session,
    List<Notes> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Notes>(
      rows,
      transaction: transaction,
    );
  }

  Future<Notes> insertRow(
    _i1.Session session,
    Notes row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Notes>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Notes>> update(
    _i1.Session session,
    List<Notes> rows, {
    _i1.ColumnSelections<NotesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Notes>(
      rows,
      columns: columns?.call(Notes.t),
      transaction: transaction,
    );
  }

  Future<Notes> updateRow(
    _i1.Session session,
    Notes row, {
    _i1.ColumnSelections<NotesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Notes>(
      row,
      columns: columns?.call(Notes.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Notes> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Notes>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Notes row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Notes>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<NotesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Notes>(
      where: where(Notes.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Notes>(
      where: where?.call(Notes.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
