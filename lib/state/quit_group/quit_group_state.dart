part of 'quit_group_bloc.dart';

@freezed
class QuitGroupState with _$QuitGroupState {
  const factory QuitGroupState.state({
    @Default(FormNotSent()) FormStatus status,
  }) = _State;
}
