part of 'password_bloc.dart';

abstract class PasswordState extends Equatable {
  const PasswordState();
  
  @override
  List<Object> get props => [];
}

class PasswordInitial extends PasswordState {}
