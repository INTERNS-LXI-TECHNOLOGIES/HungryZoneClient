import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:openapi/openapi.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AppStartedEvent>((event, emit) {});

    on<LogedInEvent>((event, emit) {
      try {
        if (event.userLogin!.password.isNotEmpty ||
            event.userLogin!.username.isNotEmpty) {
          final token = Openapi()
              .getUserJwtControllerApi()
              .authorize(loginVM: event.userLogin!);
          emit(AuthSuccessState(token: token));
        } else {
          emit(AuthLaodingState());
        }
      } catch (e) {
        (emit(AuthErrorState(error: e.toString())));
      }
    });
    on<LogedOutEvent>((event, emit) {});
  }
}
