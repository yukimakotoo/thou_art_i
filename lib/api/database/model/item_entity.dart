import 'package:drift/drift.dart';
import 'package:thou_art_i/api/database/manager/app_database.dart';
import 'package:thou_art_i/api/database/model/group_entity.dart';

enum ItemEntityLevel {
  bad(0),
  good(1),
  great(2),
  terrible(3),
  inProgress(4);

  final int value;

  const ItemEntityLevel(this.value);
}

final class ItemEntity {
  final int id;
  final String name;
  final int groupId;
  final ItemEntityLevel level;

  const ItemEntity({
    required this.id,
    required this.name,
    required this.level,
    required this.groupId,
  });

  const ItemEntity.entity({
    required this.name,
    required this.level,
    required this.groupId,
  }) : id = -1;

  ItemEntity copyWith({
    int? id,
    String? name,
    int? groupId,
    ItemEntityLevel? level,
  }) {
    return ItemEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      level: level ?? this.level,
      groupId: groupId ?? this.groupId,
    );
  }

  ItemEntityModelCompanion toCompanion() {
    return ItemEntityModelCompanion(
      name: Value(name),
      level: Value(level),
      groupId: Value(groupId),
      id: id == -1 ? const Value.absent() : Value(id),
    );
  }
}

@UseRowClass(ItemEntity)
class ItemEntityModel extends Table {
  IntColumn get id => integer()();

  TextColumn get name => text()();

  TextColumn get level => textEnum<ItemEntityLevel>()();

  IntColumn get groupId => integer().references(GroupEntityModel, #id)();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}
