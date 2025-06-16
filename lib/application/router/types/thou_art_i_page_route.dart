import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:thou_art_i/application/router/routes.dart';
import 'package:thou_art_i/application/router/types/thou_art_i_route.dart';

typedef ThouArtIPageRouteBuilder = Widget Function(BuildContext context, GoRouterState parameters);

class ThouArtIPageRoute extends ThouArtIRoute {
  const ThouArtIPageRoute({
    required this.routes,
    required this.builder,
  });

  final Routes routes;
  final ThouArtIPageRouteBuilder builder;

  @override
  GoRoute toRoute() => GoRoute(
        name: routes.name,
        path: routes.path,
        builder: builder,
      );
}
