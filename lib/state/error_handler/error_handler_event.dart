part of 'error_handler_bloc.dart';

@immutable
abstract class ErrorHandlerEvent {
  const ErrorHandlerEvent();
}

class AddErrorForErrorHandler extends ErrorHandlerEvent {
  final String message;
  const AddErrorForErrorHandler(this.message);
}
