import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:thou_art_i/application/router/configuration/thou_art_i_configuration_route.dart';
import 'package:thou_art_i/resources/generated/colors.gen.dart';
import 'package:thou_art_i/resources/strings/thou_i_art_strings.dart';

class ThouArtIPage extends StatefulWidget {
  ThouArtIPage({
    super.key,
  }) : _configuration = GetIt.I.get<ThouArtIConfiguration>();

  final ThouArtIConfiguration _configuration;

  @override
  State<ThouArtIPage> createState() => _ThouArtIPageState();
}

class _ThouArtIPageState extends State<ThouArtIPage> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: ThouArtIColors.background,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: ThouArtIColors.background,
        systemNavigationBarDividerColor: ThouArtIColors.background,
      ),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        showSemanticsDebugger: false,
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: ThouArtIColors.background,
          colorScheme: const ColorScheme.dark(
            error: ThouArtIColors.error,
            scrim: ThouArtIColors.scrim,
            onError: ThouArtIColors.onError,
            primary: ThouArtIColors.primary,
            surface: ThouArtIColors.surface,
            outline: ThouArtIColors.outline,
            tertiary: ThouArtIColors.tertiary,
            onSurface: ThouArtIColors.onSurface,
            onPrimary: ThouArtIColors.onPrimary,
            secondary: ThouArtIColors.secondary,
            onTertiary: ThouArtIColors.onTertiary,
            onSecondary: ThouArtIColors.onSecondary,
            errorContainer: ThouArtIColors.errorContainer,
            outlineVariant: ThouArtIColors.outlineVariant,
            inverseSurface: ThouArtIColors.inverseSurface,
            inversePrimary: ThouArtIColors.inversePrimary,
            onErrorContainer: ThouArtIColors.onErrorContainer,
            primaryContainer: ThouArtIColors.primaryContainer,
            onSurfaceVariant: ThouArtIColors.onSurfaceVariant,
            tertiaryContainer: ThouArtIColors.tertiaryContainer,
            onPrimaryContainer: ThouArtIColors.onPrimaryContainer,
            secondaryContainer: ThouArtIColors.secondaryContainer,
            onSecondaryContainer: ThouArtIColors.onSecondaryContainer,
            onTertiaryContainer: ThouArtIColors.onTertiaryContainer,
          ),
        ),
        localizationsDelegates: ThouIArtStrings.localizationsDelegates,
        supportedLocales: ThouIArtStrings.supportedLocales,
        routerConfig: widget._configuration.router,
      ),
    );
  }
}
