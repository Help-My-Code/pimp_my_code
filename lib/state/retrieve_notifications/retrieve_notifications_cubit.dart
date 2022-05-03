import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pimp_my_code/domain/entities/group_member.dart';
import 'package:pimp_my_code/domain/entities/notification.dart';

import '../../domain/usecases/notification/find_notifications.dart';
import '../session/session_cubit.dart';

part 'retrieve_notifications_cubit.freezed.dart';
part 'retrieve_notifications_state.dart';

class RetrieveNotificationsCubit extends Cubit<RetrieveNotificationsState> {
  final SessionCubit _sessionCubit;
  final FindNotificationsUseCase _findNotifications;
  RetrieveNotificationsCubit(this._sessionCubit, this._findNotifications)
      : super(const RetrieveNotificationsState.initial());

  void loadNotifications() async {
    emit(const RetrieveNotificationsState.loading());
    String userId = await _sessionCubit.getUserId();
    final notifications = await _findNotifications(FindNotificationsParam(userId));
    notifications.fold((l) {
      emit(const RetrieveNotificationsState.failure());
    }, (r) {
      emit(RetrieveNotificationsState.loaded(r));
    });
  }
}

