import 'package:drift/drift.dart';
import 'package:thou_art_i/api/database/manager/app_database.dart';
import 'package:thou_art_i/api/database/model/item_entity.dart';

part 'item_database_data_source.g.dart';

@DriftAccessor(
  tables: [
    ItemEntityModel,
  ],
)
final class ItemDatabaseDataSource extends DatabaseAccessor<AppDatabase> with _$ItemDatabaseDataSourceMixin {
  ItemDatabaseDataSource(super.db);
}
