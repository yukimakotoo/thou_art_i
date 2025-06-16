import 'package:injectable/injectable.dart';
import 'package:thou_art_i/api/database/model/content_value.dart';
import 'package:thou_art_i/api/repository/group_repository.dart';
import 'package:thou_art_i/api/repository/item_repository.dart';

abstract class ContentInteractor {
  Stream<List<ContentValue>> watch();
}

@Injectable(as: ContentInteractor)
final class ContentInteractorImpl implements ContentInteractor {
  const ContentInteractorImpl(
    this._itemRepository,
    this._groupRepository,
  );

  final ItemRepository _itemRepository;
  final GroupRepository _groupRepository;

  @override
  Stream<List<ContentValue>> watch() => _groupRepository.watchAll();
}
