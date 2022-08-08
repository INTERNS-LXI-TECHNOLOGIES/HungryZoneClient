part of 'auth_bloc.dart';

@immutable
abstract class AuthState extends Equatable {}

class AuthInitial extends AuthState {
  @override
  List<Object?> get props => [toString()];
}

class AuthLaodingState extends AuthState {
  @override
  List<Object?> get props => [toString()];
}

class AuthSuccessState extends AuthState {
  @override
  List<Object?> get props => [toString()];
}

class AuthErrorState extends AuthState {
  @override
  List<Object?> get props => [toString()];
}
