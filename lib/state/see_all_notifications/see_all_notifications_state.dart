part of 'see_all_notifications_cubit.dart';

@freezed
class SeeAllNotificationsState with _$SeeAllNotificationsState {
  const factory SeeAllNotificationsState.initial() = _Initial;

  const factory SeeAllNotificationsState.loading() = _Loading;

  const factory SeeAllNotificationsState.failure() = _Failure;

  const factory SeeAllNotificationsState.success() = _Success;
}
