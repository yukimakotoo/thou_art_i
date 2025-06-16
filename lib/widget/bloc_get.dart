import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class BlocGet<T extends Cubit<dynamic>> extends StatelessWidget {
  const BlocGet({
    super.key,
    this.child,
    this.onCreate,
  });

  final Widget? child;
  final void Function(T cubit)? onCreate;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final cubit = GetIt.I.get<T>();
        onCreate?.call(cubit);
        return cubit;
      },
      child: child,
    );
  }
}
