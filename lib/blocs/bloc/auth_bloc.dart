import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AppStartedEvent>((event, emit) {});

    on<LogedInEvent>((event, emit) {
      if (event.token == '123') {
        emit(AuthSuccessState());
      } else {
        emit(AuthErrorState());
      }
    });
    on<LogedOutEvent>((event, emit) {});
  }
}
