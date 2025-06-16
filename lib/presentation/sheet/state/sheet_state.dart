import 'package:equatable/equatable.dart';

class SheetState extends Equatable {
  final bool isLoading;

  const SheetState({
    this.isLoading = true,
  });

  SheetState copyWith({
    bool? isLoading,
  }) {
    return SheetState(
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [
        isLoading,
      ];
}
