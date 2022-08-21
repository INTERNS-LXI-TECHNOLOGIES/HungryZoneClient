part of 'signup_bloc.dart';

class SignupEvent extends Equatable {
  const SignupEvent();

  @override
  List<Object> get props => [];
}

class RegisterUserEvent extends SignupEvent {
  ManagedUserVM? user;
  RegisterUserEvent({required ManagedUserVM user});
}
