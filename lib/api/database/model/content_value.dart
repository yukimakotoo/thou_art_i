import 'package:thou_art_i/api/database/model/group_entity.dart';
import 'package:thou_art_i/api/database/model/item_entity.dart';

final class ContentValue {
  final GroupEntity group;
  final List<ItemEntity> items;

  const ContentValue({
    required this.group,
    required this.items,
  });
}
