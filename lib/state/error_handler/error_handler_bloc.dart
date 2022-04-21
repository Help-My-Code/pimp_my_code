import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_handler_event.dart';
part 'error_handler_state.dart';

class ErrorHandlerBloc extends Bloc<ErrorHandlerEvent, ErrorHandlerState> {
  ErrorHandlerBloc() : super(const ErrorHandlerState()) {
    on<AddErrorForErrorHandler>((event, emit) {
      emit(ErrorHandlerState.withMessage(message: event.message));
    });
  }
}
