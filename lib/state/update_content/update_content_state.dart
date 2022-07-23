part of 'update_content_bloc.dart';

@freezed
class UpdateContentState with _$UpdateContentState {
  const factory UpdateContentState.state({
    @Default('') String content,
    @Default('') String? title,
    @Default(FormNotSent()) FormStatus status,
  }) = _State;
}
