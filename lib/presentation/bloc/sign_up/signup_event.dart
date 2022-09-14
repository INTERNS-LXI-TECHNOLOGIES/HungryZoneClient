part of 'signup_bloc.dart';

class SignupEvent extends Equatable {
  const SignupEvent();

  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class RegisterUserEvent extends SignupEvent {
  ManagedUserVM? user;
  RegisterUserEvent({required ManagedUserVM user});
}
