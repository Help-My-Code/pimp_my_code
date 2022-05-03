part of 'retrieve_notifications_cubit.dart';

@freezed
class RetrieveNotificationsState with _$RetrieveNotificationsState {
  const factory RetrieveNotificationsState.initial() = _Initial;

  const factory RetrieveNotificationsState.loading() = _Loading;

  const factory RetrieveNotificationsState.loaded(List<Notification> groups) =
      _Loaded;

  const factory RetrieveNotificationsState.failure() = _Failure;
}
