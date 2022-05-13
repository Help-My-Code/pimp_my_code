part of 'join_group_bloc.dart';

@freezed
class JoinGroupState with _$JoinGroupState {
  const factory JoinGroupState.state({
    @Default(FormNotSent()) FormStatus status,
  }) = _State;
}
