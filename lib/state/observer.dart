import 'package:bloc/bloc.dart';

import '../core/exception.dart';
import 'error_handler/error_handler_bloc.dart';
import 'session/session_cubit.dart';

class AppObserver extends BlocObserver {
  final SessionCubit _sessionCubit;
  final ErrorHandlerBloc _errorHandlerBloc;

  AppObserver(this._sessionCubit, this._errorHandlerBloc);
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (error is NotAllowedRequestException) {
      _sessionCubit.logout();
    }
    if (error is RequestNotSendException) {
      _errorHandlerBloc.add(
        const AddErrorForErrorHandler('request_not_recieve_need_to_retry'),
      );
    }
    if (error is ServerException) {
      _errorHandlerBloc.add(const AddErrorForErrorHandler('server_error'));
    }
    if (error is NotFoundRequestException) {
      _errorHandlerBloc.add(const AddErrorForErrorHandler('Not found'));
    }
    if (error is ForbiddenRequestException) {
      _errorHandlerBloc.add(const AddErrorForErrorHandler(
        'You_are_not_authorized_for_this_operation',
      ));
    }
    super.onError(bloc, error, stackTrace);
  }
}
