part of 'password_bloc.dart';

class PasswordEvent extends Equatable {
  const PasswordEvent();

  @override
  List<Object> get props => [];
}

class ForgotPasswordEvent extends PasswordEvent {
  String emailId;
  ForgotPasswordEvent({required this.emailId});
  @override
  List<Object> get props => [];
}
