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
  Future<Response<JWTToken>>? token;
  AuthSuccessState({required this.token});
  @override
  List<Object?> get props => [toString()];
}

class AuthErrorState extends AuthState {
  String? error;
  AuthErrorState({required this.error});
  @override
  List<Object?> get props => [toString()];
}
