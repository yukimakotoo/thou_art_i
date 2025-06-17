import 'package:injectable/injectable.dart';
import 'package:thou_art_i/api/database/datasource/group_database_data_source.dart';
import 'package:thou_art_i/api/database/datasource/item_database_data_source.dart';
import 'package:thou_art_i/api/database/manager/app_database.dart';

@module
abstract class DatabaseModule {
  @LazySingleton()
  AppDatabase get appDatabase => AppDatabase.instance;

  @LazySingleton()
  ItemDatabaseDataSource itemDatabaseDataSource(
    AppDatabase database,
  ) =>
      database.itemDatabaseDataSource;

  @LazySingleton()
  GroupDatabaseDataSource groupDatabaseDataSource(
    AppDatabase database,
  ) =>
      database.groupDatabaseDataSource;
}
