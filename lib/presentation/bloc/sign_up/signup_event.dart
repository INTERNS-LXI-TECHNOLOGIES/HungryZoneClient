part of 'signup_bloc.dart';

class SignupEvent extends Equatable {
  const SignupEvent();

  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class RegisterUserEvent extends SignupEvent {
  ManagedUserVM? user;
  RegisterUserEvent({required this.user});
}

class ActivateAccountEvent extends SignupEvent {
  late final String activeKey;
  ActivateAccountEvent({required this.activeKey});
  @override
  List<Object> get props => [];
}
