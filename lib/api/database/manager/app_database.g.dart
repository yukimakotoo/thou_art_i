// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $GroupEntityModelTable extends GroupEntityModel
    with TableInfo<$GroupEntityModelTable, GroupEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GroupEntityModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'group_entity_model';
  @override
  VerificationContext validateIntegrity(Insertable<GroupEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GroupEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GroupEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $GroupEntityModelTable createAlias(String alias) {
    return $GroupEntityModelTable(attachedDatabase, alias);
  }
}

class GroupEntityModelCompanion extends UpdateCompanion<GroupEntity> {
  final Value<int> id;
  final Value<String> name;
  const GroupEntityModelCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  GroupEntityModelCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<GroupEntity> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  GroupEntityModelCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return GroupEntityModelCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GroupEntityModelCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $ItemEntityModelTable extends ItemEntityModel
    with TableInfo<$ItemEntityModelTable, ItemEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemEntityModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<ItemEntityLevel, String> level =
      GeneratedColumn<String>('level', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<ItemEntityLevel>(
              $ItemEntityModelTable.$converterlevel);
  static const VerificationMeta _groupIdMeta =
      const VerificationMeta('groupId');
  @override
  late final GeneratedColumn<int> groupId = GeneratedColumn<int>(
      'group_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES group_entity_model (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, name, level, groupId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_entity_model';
  @override
  VerificationContext validateIntegrity(Insertable<ItemEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('group_id')) {
      context.handle(_groupIdMeta,
          groupId.isAcceptableOrUnknown(data['group_id']!, _groupIdMeta));
    } else if (isInserting) {
      context.missing(_groupIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      level: $ItemEntityModelTable.$converterlevel.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}level'])!),
      groupId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}group_id'])!,
    );
  }

  @override
  $ItemEntityModelTable createAlias(String alias) {
    return $ItemEntityModelTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<ItemEntityLevel, String, String> $converterlevel =
      const EnumNameConverter<ItemEntityLevel>(ItemEntityLevel.values);
}

class ItemEntityModelCompanion extends UpdateCompanion<ItemEntity> {
  final Value<int> id;
  final Value<String> name;
  final Value<ItemEntityLevel> level;
  final Value<int> groupId;
  const ItemEntityModelCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.level = const Value.absent(),
    this.groupId = const Value.absent(),
  });
  ItemEntityModelCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required ItemEntityLevel level,
    required int groupId,
  })  : name = Value(name),
        level = Value(level),
        groupId = Value(groupId);
  static Insertable<ItemEntity> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? level,
    Expression<int>? groupId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (level != null) 'level': level,
      if (groupId != null) 'group_id': groupId,
    });
  }

  ItemEntityModelCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<ItemEntityLevel>? level,
      Value<int>? groupId}) {
    return ItemEntityModelCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      level: level ?? this.level,
      groupId: groupId ?? this.groupId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (level.present) {
      map['level'] = Variable<String>(
          $ItemEntityModelTable.$converterlevel.toSql(level.value));
    }
    if (groupId.present) {
      map['group_id'] = Variable<int>(groupId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemEntityModelCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('level: $level, ')
          ..write('groupId: $groupId')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $GroupEntityModelTable groupEntityModel =
      $GroupEntityModelTable(this);
  late final $ItemEntityModelTable itemEntityModel =
      $ItemEntityModelTable(this);
  late final ItemDatabaseDataSource itemDatabaseDataSource =
      ItemDatabaseDataSource(this as AppDatabase);
  late final GroupDatabaseDataSource groupDatabaseDataSource =
      GroupDatabaseDataSource(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [groupEntityModel, itemEntityModel];
}

typedef $$GroupEntityModelTableCreateCompanionBuilder
    = GroupEntityModelCompanion Function({
  Value<int> id,
  required String name,
});
typedef $$GroupEntityModelTableUpdateCompanionBuilder
    = GroupEntityModelCompanion Function({
  Value<int> id,
  Value<String> name,
});

final class $$GroupEntityModelTableReferences
    extends BaseReferences<_$AppDatabase, $GroupEntityModelTable, GroupEntity> {
  $$GroupEntityModelTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ItemEntityModelTable, List<ItemEntity>>
      _itemEntityModelRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.itemEntityModel,
              aliasName: $_aliasNameGenerator(
                  db.groupEntityModel.id, db.itemEntityModel.groupId));

  $$ItemEntityModelTableProcessedTableManager get itemEntityModelRefs {
    final manager =
        $$ItemEntityModelTableTableManager($_db, $_db.itemEntityModel)
            .filter((f) => f.groupId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_itemEntityModelRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$GroupEntityModelTableFilterComposer
    extends Composer<_$AppDatabase, $GroupEntityModelTable> {
  $$GroupEntityModelTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  Expression<bool> itemEntityModelRefs(
      Expression<bool> Function($$ItemEntityModelTableFilterComposer f) f) {
    final $$ItemEntityModelTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.itemEntityModel,
        getReferencedColumn: (t) => t.groupId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemEntityModelTableFilterComposer(
              $db: $db,
              $table: $db.itemEntityModel,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$GroupEntityModelTableOrderingComposer
    extends Composer<_$AppDatabase, $GroupEntityModelTable> {
  $$GroupEntityModelTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));
}

class $$GroupEntityModelTableAnnotationComposer
    extends Composer<_$AppDatabase, $GroupEntityModelTable> {
  $$GroupEntityModelTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> itemEntityModelRefs<T extends Object>(
      Expression<T> Function($$ItemEntityModelTableAnnotationComposer a) f) {
    final $$ItemEntityModelTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.itemEntityModel,
        getReferencedColumn: (t) => t.groupId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemEntityModelTableAnnotationComposer(
              $db: $db,
              $table: $db.itemEntityModel,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$GroupEntityModelTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GroupEntityModelTable,
    GroupEntity,
    $$GroupEntityModelTableFilterComposer,
    $$GroupEntityModelTableOrderingComposer,
    $$GroupEntityModelTableAnnotationComposer,
    $$GroupEntityModelTableCreateCompanionBuilder,
    $$GroupEntityModelTableUpdateCompanionBuilder,
    (GroupEntity, $$GroupEntityModelTableReferences),
    GroupEntity,
    PrefetchHooks Function({bool itemEntityModelRefs})> {
  $$GroupEntityModelTableTableManager(
      _$AppDatabase db, $GroupEntityModelTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GroupEntityModelTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GroupEntityModelTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GroupEntityModelTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) =>
              GroupEntityModelCompanion(
            id: id,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) =>
              GroupEntityModelCompanion.insert(
            id: id,
            name: name,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$GroupEntityModelTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({itemEntityModelRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (itemEntityModelRefs) db.itemEntityModel
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (itemEntityModelRefs)
                    await $_getPrefetchedData<GroupEntity,
                            $GroupEntityModelTable, ItemEntity>(
                        currentTable: table,
                        referencedTable: $$GroupEntityModelTableReferences
                            ._itemEntityModelRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$GroupEntityModelTableReferences(db, table, p0)
                                .itemEntityModelRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.groupId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$GroupEntityModelTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GroupEntityModelTable,
    GroupEntity,
    $$GroupEntityModelTableFilterComposer,
    $$GroupEntityModelTableOrderingComposer,
    $$GroupEntityModelTableAnnotationComposer,
    $$GroupEntityModelTableCreateCompanionBuilder,
    $$GroupEntityModelTableUpdateCompanionBuilder,
    (GroupEntity, $$GroupEntityModelTableReferences),
    GroupEntity,
    PrefetchHooks Function({bool itemEntityModelRefs})>;
typedef $$ItemEntityModelTableCreateCompanionBuilder = ItemEntityModelCompanion
    Function({
  Value<int> id,
  required String name,
  required ItemEntityLevel level,
  required int groupId,
});
typedef $$ItemEntityModelTableUpdateCompanionBuilder = ItemEntityModelCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<ItemEntityLevel> level,
  Value<int> groupId,
});

final class $$ItemEntityModelTableReferences
    extends BaseReferences<_$AppDatabase, $ItemEntityModelTable, ItemEntity> {
  $$ItemEntityModelTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $GroupEntityModelTable _groupIdTable(_$AppDatabase db) =>
      db.groupEntityModel.createAlias($_aliasNameGenerator(
          db.itemEntityModel.groupId, db.groupEntityModel.id));

  $$GroupEntityModelTableProcessedTableManager get groupId {
    final $_column = $_itemColumn<int>('group_id')!;

    final manager =
        $$GroupEntityModelTableTableManager($_db, $_db.groupEntityModel)
            .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_groupIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ItemEntityModelTableFilterComposer
    extends Composer<_$AppDatabase, $ItemEntityModelTable> {
  $$ItemEntityModelTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<ItemEntityLevel, ItemEntityLevel, String>
      get level => $composableBuilder(
          column: $table.level,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  $$GroupEntityModelTableFilterComposer get groupId {
    final $$GroupEntityModelTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.groupId,
        referencedTable: $db.groupEntityModel,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GroupEntityModelTableFilterComposer(
              $db: $db,
              $table: $db.groupEntityModel,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ItemEntityModelTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemEntityModelTable> {
  $$ItemEntityModelTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get level => $composableBuilder(
      column: $table.level, builder: (column) => ColumnOrderings(column));

  $$GroupEntityModelTableOrderingComposer get groupId {
    final $$GroupEntityModelTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.groupId,
        referencedTable: $db.groupEntityModel,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GroupEntityModelTableOrderingComposer(
              $db: $db,
              $table: $db.groupEntityModel,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ItemEntityModelTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemEntityModelTable> {
  $$ItemEntityModelTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumnWithTypeConverter<ItemEntityLevel, String> get level =>
      $composableBuilder(column: $table.level, builder: (column) => column);

  $$GroupEntityModelTableAnnotationComposer get groupId {
    final $$GroupEntityModelTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.groupId,
        referencedTable: $db.groupEntityModel,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GroupEntityModelTableAnnotationComposer(
              $db: $db,
              $table: $db.groupEntityModel,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ItemEntityModelTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItemEntityModelTable,
    ItemEntity,
    $$ItemEntityModelTableFilterComposer,
    $$ItemEntityModelTableOrderingComposer,
    $$ItemEntityModelTableAnnotationComposer,
    $$ItemEntityModelTableCreateCompanionBuilder,
    $$ItemEntityModelTableUpdateCompanionBuilder,
    (ItemEntity, $$ItemEntityModelTableReferences),
    ItemEntity,
    PrefetchHooks Function({bool groupId})> {
  $$ItemEntityModelTableTableManager(
      _$AppDatabase db, $ItemEntityModelTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemEntityModelTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemEntityModelTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemEntityModelTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<ItemEntityLevel> level = const Value.absent(),
            Value<int> groupId = const Value.absent(),
          }) =>
              ItemEntityModelCompanion(
            id: id,
            name: name,
            level: level,
            groupId: groupId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required ItemEntityLevel level,
            required int groupId,
          }) =>
              ItemEntityModelCompanion.insert(
            id: id,
            name: name,
            level: level,
            groupId: groupId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ItemEntityModelTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({groupId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (groupId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.groupId,
                    referencedTable:
                        $$ItemEntityModelTableReferences._groupIdTable(db),
                    referencedColumn:
                        $$ItemEntityModelTableReferences._groupIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ItemEntityModelTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ItemEntityModelTable,
    ItemEntity,
    $$ItemEntityModelTableFilterComposer,
    $$ItemEntityModelTableOrderingComposer,
    $$ItemEntityModelTableAnnotationComposer,
    $$ItemEntityModelTableCreateCompanionBuilder,
    $$ItemEntityModelTableUpdateCompanionBuilder,
    (ItemEntity, $$ItemEntityModelTableReferences),
    ItemEntity,
    PrefetchHooks Function({bool groupId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$GroupEntityModelTableTableManager get groupEntityModel =>
      $$GroupEntityModelTableTableManager(_db, _db.groupEntityModel);
  $$ItemEntityModelTableTableManager get itemEntityModel =>
      $$ItemEntityModelTableTableManager(_db, _db.itemEntityModel);
}
