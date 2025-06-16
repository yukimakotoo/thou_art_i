import 'package:drift/drift.dart';
import 'package:thou_art_i/api/database/manager/app_database.dart';
import 'package:thou_art_i/api/database/model/content_value.dart';
import 'package:thou_art_i/api/database/model/group_entity.dart';
import 'package:thou_art_i/api/database/model/item_entity.dart';

part 'group_database_data_source.g.dart';

@DriftAccessor(
  tables: [
    ItemEntityModel,
    GroupEntityModel,
  ],
)
final class GroupDatabaseDataSource extends DatabaseAccessor<AppDatabase> with _$GroupDatabaseDataSourceMixin {
  GroupDatabaseDataSource(super.db);

  Stream<List<ContentValue>> watchAll() {
    final query = select(groupEntityModel).join([
      innerJoin(itemEntityModel, itemEntityModel.groupId.equalsExp(groupEntityModel.id)),
    ]);

    return query.watch().map((rows) {
      final items = rows.map((row) {
        return (
          group: row.readTable(groupEntityModel),
          item: row.readTable(itemEntityModel),
        );
      });

      final List<ContentValue> groupedItems = [];
      for (final item in items) {
        final existingGroup = groupedItems.firstWhere(
          (content) => content.group.id == item.group.id,
          orElse: () => ContentValue(group: item.group, items: []),
        );

        if (existingGroup.items.isEmpty) {
          groupedItems.add(existingGroup);
        }

        existingGroup.items.add(item.item);
      }

      return groupedItems;
    });
  }
}
