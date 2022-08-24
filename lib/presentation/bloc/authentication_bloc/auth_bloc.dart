import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hungryzone/main.dart';
import 'package:meta/meta.dart';
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
    if (event.userLogin!.password.isNotEmpty ||
        event.userLogin!.username.isNotEmpty) {
      final token = await Openapi()
          .getUserJwtControllerApi()
          .authorize(loginVM: event.userLogin!);
      debugPrint("token--$token");

      if (token.data!.idToken!.isNotEmpty || token.data!.idToken != null) {
        final _sharedPreference = await SharedPreferences.getInstance();
        _sharedPreference.setBool(SHARED_PREFERENCES_KEY, true);
      }

      emit(AuthSuccessState(token: token));
    } else {
      emit(AuthLaodingState());
    }
  } catch (e) {
    (emit(AuthErrorState(error: e.toString())));
  }
}
