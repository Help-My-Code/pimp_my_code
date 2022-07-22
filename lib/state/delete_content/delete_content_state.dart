part of 'delete_content_cubit.dart';

@freezed
class DeleteContentState with _$DeleteContentState {
  const factory DeleteContentState.initial() = _Initial;

  const factory DeleteContentState.loading() = _Loading;

  const factory DeleteContentState.failure() = _Failure;

  const factory DeleteContentState.success() = _Success;
}
