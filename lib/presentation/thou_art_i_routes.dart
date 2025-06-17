import 'package:thou_art_i/application/router/types/thou_art_i_route.dart';
import 'package:thou_art_i/presentation/content/content_routes.dart';
import 'package:thou_art_i/presentation/sheet/sheet_routes.dart';

final List<ThouArtIRoute> thouArtIRoutes = [
  ...sheetRoutes,
  ...contentRoutes,
];
