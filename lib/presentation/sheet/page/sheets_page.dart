import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thou_art_i/presentation/sheet/cubit/sheet_cubit.dart';
import 'package:thou_art_i/presentation/sheet/state/sheet_state.dart';
import 'package:thou_art_i/widget/bloc_get.dart';

class SheetsPage extends StatelessWidget {
  const SheetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocGet<SheetCubit>(
      onCreate: (cubit) => cubit.start(),
      child: BlocConsumer<SheetCubit, SheetState>(
        listener: (BuildContext context, SheetState state) {},
        builder: (BuildContext context, SheetState state) {
          return Scaffold();
        },
      ),
    );
  }
}
