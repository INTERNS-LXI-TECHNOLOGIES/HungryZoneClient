part of 'signup_bloc.dart';

abstract class SignupState extends Equatable {
  const SignupState();

  @override
  List<Object> get props => [];
}

class SignupInitial extends SignupState {
  @override
  List<Object> get props => [];
}

class RegisterLoading extends SignupState {
  @override
  List<Object> get props => [];
}

class RegisterLoaded extends SignupState {
  @override
  List<Object> get props => [];
}

class RegisterLoadError extends SignupState {
  String? error;
  RegisterLoadError({required this.error});
  @override
  List<Object> get props => [];
}
