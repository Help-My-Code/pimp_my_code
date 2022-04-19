part of 'session_cubit.dart';

abstract class SessionState {
  const SessionState();
}

class UnknownAuthState extends SessionState {
  const UnknownAuthState();
}

class Unauthenticated extends SessionState {
  const Unauthenticated();
}

class Authenticated extends SessionState with EquatableMixin {
  final String userId;

  Authenticated({required this.userId});

  @override
  List<Object?> get props => [userId];
}
