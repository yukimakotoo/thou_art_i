import 'package:injectable/injectable.dart';
import 'package:thou_art_i/api/database/datasource/item_database_data_source.dart';

abstract class ItemRepository {}

@Injectable(as: ItemRepository)
class ItemRepositoryImpl implements ItemRepository {
  const ItemRepositoryImpl(
    this._dataSource,
  );

  final ItemDatabaseDataSource _dataSource;
}
