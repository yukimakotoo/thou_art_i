import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:thou_art_i/api/database/model/content_value.dart';
import 'package:thou_art_i/presentation/content/interactor/content_interactor.dart';
import 'package:thou_art_i/presentation/content/state/content_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@Injectable()
final class ContentCubit extends Cubit<ContentState> {
  ContentCubit(
    this._interactor,
  ) : super(const ContentState.initial());

  final ContentInteractor _interactor;

  StreamSubscription<List<ContentValue>>? _subscription;

  Future<void> start() async {
    _subscription?.cancel();
    _subscription = _interactor.watch().listen((data) => emit(state.copyWith(
          isLoading: false,
          values: data,
        )));
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    _subscription = null;
    return super.close();
  }
}
