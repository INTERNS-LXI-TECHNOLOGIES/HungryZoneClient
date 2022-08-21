part of 'signup_bloc.dart';

abstract class SignupState extends Equatable {
  const SignupState();

  @override
  List<Object> get props => [];
}

class SignupInitial extends SignupState {}

class RegisterLoading extends SignupState {}

class RegisterLoaded extends SignupState {}

class RegisterLoadError extends SignupState {}
