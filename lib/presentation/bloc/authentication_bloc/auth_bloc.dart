import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hungryzone/main.dart';
import 'package:openapi/openapi.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AppStartedEvent>((event, emit) {});

    on<LogedInEvent>(_checkLoginUser);

    on<ForgetPasswordEvent>((event, emit) {
      //Openapi().getAccountResourceApi().requestPasswordReset(body: body)
    });
    on<LogedOutEvent>((event, emit) {});
  }
}

_checkLoginUser(LogedInEvent event, Emitter<AuthState> emit) async {
  try {
    if (event.userLogin!.password.isNotEmpty &&
        event.userLogin!.username.isNotEmpty) {
      final token = await Openapi()
          .getUserJwtControllerApi()
          .authorize(loginVM: event.userLogin!);
      debugPrint("token--$token");
      debugPrint("response--${token.statusCode}");
      debugPrint("response--${token.data!.idToken}");

      if (token.statusCode == 200 || token.statusCode == 201) {
        if (token.data!.idToken!.isNotEmpty || token.data!.idToken != null) {
          final sharedPreference = await SharedPreferences.getInstance();
          sharedPreference.setString(
              SHARED_PREFERENCES_KEY,
              token.data!
                  .idToken!); // save token.data.idToken. You had stored token itself before. That was causing the error
          //Remove this line. It is not needed.=> sharedPreference.setBool(SHARED_PREFERENCES_KEY, true);
          emit(AuthSuccessState(token: token));
        }
      } else {
        (emit(AuthErrorState(error: token.statusCode.toString())));
      }
    } else {
      emit(AuthErrorState(error: 'error'));
    }
  } catch (e) {
    (emit(AuthErrorState(error: e.toString())));
  }
}
