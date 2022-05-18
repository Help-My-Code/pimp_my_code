part of 'delete_group_cubit.dart';

@freezed
class DeleteGroupState with _$DeleteGroupState {
  const factory DeleteGroupState.initial() = _Initial;

  const factory DeleteGroupState.loading() = _Loading;

  const factory DeleteGroupState.failure() = _Failure;

  const factory DeleteGroupState.success() = _Success;
}
