part of 'error_handler_bloc.dart';

class ErrorHandlerState extends Equatable {
  final String? message;
  const ErrorHandlerState([this.message]);
  const ErrorHandlerState.withMessage({required this.message});

  @override
  List<Object?> get props => [message];
}
