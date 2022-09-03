part of 'password_bloc.dart';

abstract class PasswordState extends Equatable {
  const PasswordState();

  @override
  List<Object> get props => [];
}

class PasswordInitial extends PasswordState {}

class ForgotPasswordLoading extends PasswordState {}

class ForgotPasswordLoaded extends PasswordState {}

class ForgotPasswordLoadError extends PasswordState {
  String error;
  ForgotPasswordLoadError({required this.error});
}

class ForgotPasswordFinishLoading extends PasswordState {}

class ForgotPasswordFinishLoaded extends PasswordState {}

class ForgotPasswordFinishLoadError extends PasswordState {
  String error;
  ForgotPasswordFinishLoadError({required this.error});
}
