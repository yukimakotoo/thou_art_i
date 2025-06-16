import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:thou_art_i/presentation/sheet/state/sheet_state.dart';

@Injectable()
class SheetCubit extends Cubit<SheetState> {
  SheetCubit() : super(const SheetState());

  Future<void> start() async {

  }
}