// ignore_for_file: must_be_immutable

part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {
  @override
  List<Object?> get props => [toString()];
}

class AuthLaodingState extends AuthState {
  @override
  List<Object?> get props => [toString()];
}

class AuthSuccessState extends AuthState {
  Response<JWTToken>? token;
  AuthSuccessState({required this.token});
  @override
  List<Object?> get props => [toString()];
}

class AuthErrorState extends AuthState {
  String? error;
  AuthErrorState({required this.error});
}

class ForgetPasswordLoading extends AuthState {
  @override
  List<Object?> get props => [toString()];
}

class ForgetPasswordLoaded extends AuthState {
  @override
  List<Object?> get props => [toString()];
}

class ForgetPasswordLoadError extends AuthState {
  @override
  List<Object?> get props => [toString()];
}
