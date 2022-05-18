import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pimp_my_code/domain/usecases/notification/see_all_notifications.dart';
import '../../domain/entities/notification.dart';

import '../../domain/usecases/notification/find_notifications.dart';
import '../session/session_cubit.dart';

part 'see_all_notifications_cubit.freezed.dart';
part 'see_all_notifications_state.dart';

class SeeAllNotificationsCubit extends Cubit<SeeAllNotificationsState> {
  final SessionCubit _sessionCubit;
  final SeeAllNotificationsUseCase _seeNotifications;
  SeeAllNotificationsCubit(this._sessionCubit, this._seeNotifications)
      : super(const SeeAllNotificationsState.initial());

  void seeAllNotifications() async {
    emit(const SeeAllNotificationsState.loading());
    String userId = await _sessionCubit.getUserId();
    final notifications =
        await _seeNotifications(SeeAllNotificationsParam(userId));
    notifications.fold((l) {
      emit(const SeeAllNotificationsState.failure());
    }, (r) {
      emit(const SeeAllNotificationsState.success());
    });
  }
}
