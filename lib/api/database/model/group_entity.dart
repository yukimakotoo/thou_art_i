import 'package:drift/drift.dart';
import 'package:thou_art_i/api/database/manager/app_database.dart';

final class GroupEntity {
  final int id;
  final String name;

  const GroupEntity({
    required this.id,
    required this.name,
  });

  const GroupEntity.entity({
    required this.name,
  }) : id = -1;

  GroupEntity copyWith({
    int? id,
    String? name,
  }) {
    return GroupEntity(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  GroupEntityModelCompanion toCompanion() {
    return GroupEntityModelCompanion(
      name: Value(name),
      id: id == -1 ? const Value.absent() : Value(id),
    );
  }
}

@UseRowClass(GroupEntity)
class GroupEntityModel extends Table {
  IntColumn get id => integer()();

  TextColumn get name => text()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}
