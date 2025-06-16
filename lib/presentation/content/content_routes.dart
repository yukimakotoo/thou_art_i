import 'package:thou_art_i/application/router/routes.dart';
import 'package:thou_art_i/application/router/types/thou_art_i_page_route.dart';
import 'package:thou_art_i/application/router/types/thou_art_i_route.dart';
import 'package:thou_art_i/presentation/content/page/content_page.dart';

final List<ThouArtIRoute> contentRoutes = [
  ThouArtIPageRoute(
    routes: Routes.content,
    builder: (context, state) => ContentPage(),
  ),
];
