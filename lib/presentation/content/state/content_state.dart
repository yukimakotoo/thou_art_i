import 'package:equatable/equatable.dart';
import 'package:thou_art_i/api/database/model/content_value.dart';

final class ContentState extends Equatable {
  const ContentState({
    this.isLoading = false,
    this.values = const [],
  });

  const ContentState.initial({
    this.isLoading = false,
    this.values = const [],
  });

  final bool isLoading;
  final List<ContentValue> values;

  ContentState copyWith({
    bool? isLoading,
    List<ContentValue>? values,
  }) {
    return ContentState(
      values: values ?? this.values,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [
        values,
        isLoading,
      ];
}
