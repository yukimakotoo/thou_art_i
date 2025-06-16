import 'dart:io';

import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:thou_art_i/api/database/datasource/group_database_data_source.dart';
import 'package:thou_art_i/api/database/datasource/item_database_data_source.dart';
import 'package:thou_art_i/api/database/manager/app_database.dart';

@module
abstract class DatabaseModule {
  @LazySingleton()
  Future<AppDatabase> get appDatabase async {
    final databasePath = await getDatabasesPath();

    return AppDatabase(
      NativeDatabase.createInBackground(File(
        join(databasePath, 'app_database.db'),
      )),
    );
  }

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
