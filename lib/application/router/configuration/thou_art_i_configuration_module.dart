import 'package:injectable/injectable.dart';
import 'package:thou_art_i/application/router/configuration/thou_art_i_configuration_route.dart';
import 'package:thou_art_i/presentation/thou_art_i_routes.dart';

@module
abstract class ThouArtIConfigurationModule {
  @Singleton()
  ThouArtIConfiguration configuration() => ThouArtIConfiguration(
        routes: thouArtIRoutes,
      );
}
