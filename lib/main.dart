import 'package:flutter/material.dart';
import 'package:thou_art_i/application/injection/injection.dart';
import 'package:thou_art_i/application/page/thou_art_i_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(ThouArtIPage());
}
