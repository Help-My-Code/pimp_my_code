part of 'create_group_bloc.dart';

@freezed
class CreateGroupState with _$CreateGroupState {
  const factory CreateGroupState.state({
    @Default('') String name,
    @Default(FormNotSent()) FormStatus status,
  }) = _State;
}
