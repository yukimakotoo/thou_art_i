import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
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

  static late final AppDatabase _database;

  static AppDatabase get instance => _database;

  static Future<void> init() async {
    final databasePath = await getDatabasesPath();

    _database = AppDatabase(
      NativeDatabase.createInBackground(File(
        join(databasePath, 'app_database.db'),
      )),
    );
  }

  @override
  int get schemaVersion => 1;
}
