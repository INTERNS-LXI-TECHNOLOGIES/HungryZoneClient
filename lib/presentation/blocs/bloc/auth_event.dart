part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent extends Equatable {}

class AppStartedEvent extends AuthEvent {
  @override
  List<Object?> get props => [toString()];
}

class LogedInEvent extends AuthEvent {
  final String token;
  LogedInEvent({required this.token});

  @override
  List<Object?> get props => [toString()];
}

class LogedOutEvent extends AuthEvent {
  @override
  List<Object?> get props => [toString()];
}
