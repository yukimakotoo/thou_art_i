import 'package:injectable/injectable.dart';
import 'package:thou_art_i/api/database/datasource/group_database_data_source.dart';
import 'package:thou_art_i/api/database/model/content_value.dart';

abstract class GroupRepository {
  Stream<List<ContentValue>> watchAll();
}

@Injectable(as: GroupRepository)
class GroupRepositoryImpl implements GroupRepository {
  const GroupRepositoryImpl(
    this._dataSource,
  );

  final GroupDatabaseDataSource _dataSource;

  @override
  Stream<List<ContentValue>> watchAll() => _dataSource.watchAll();
}
