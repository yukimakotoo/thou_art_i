import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thou_art_i/presentation/content/cubit/content_cubit.dart';
import 'package:thou_art_i/presentation/content/state/content_state.dart';
import 'package:thou_art_i/widget/bloc_get.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocGet<ContentCubit>(
      onCreate: (cubit) => cubit.start(),
      child: BlocConsumer<ContentCubit, ContentState>(
        listener: (BuildContext context, ContentState state) {},
        builder: (BuildContext context, ContentState state) {
          return Scaffold();
        },
      ),
    );
  }
}
