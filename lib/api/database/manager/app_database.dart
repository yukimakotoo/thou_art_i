import 'package:drift/drift.dart';
import 'package:thou_art_i/api/database/datasource/group_database_data_source.dart';
import 'package:thou_art_i/api/database/datasource/item_database_data_source.dart';
import 'package:thou_art_i/api/database/model/group_entity.dart';
import 'package:thou_art_i/api/database/model/item_entity.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [
  ItemEntityModel,
  GroupEntityModel,
], daos: [
  ItemDatabaseDataSource,
  GroupDatabaseDataSource,
])
final class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;
}
