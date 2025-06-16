import 'package:go_router/go_router.dart';
import 'package:thou_art_i/application/router/routes.dart';
import 'package:thou_art_i/application/router/types/thou_art_i_route.dart';

class ThouArtIConfiguration {
  final List<ThouArtIRoute> routes;
  final GoRouter _goRoute;

  ThouArtIConfiguration({
    required this.routes,
  }) : _goRoute = GoRouter(
          initialLocation: Routes.content.path,
          routes: routes.map<GoRoute>((ThouArtIRoute route) => route.toRoute()).toList(),
        );

  GoRouter get router => _goRoute;
}
