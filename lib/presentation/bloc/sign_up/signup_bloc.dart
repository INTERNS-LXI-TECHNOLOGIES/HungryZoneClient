import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:openapi/openapi.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    on<RegisterUserEvent>(_regesterUser);
    on<ActivateAccountEvent>(_checkActiveUser);
  }
  _regesterUser(RegisterUserEvent event, Emitter<SignupState> emit) async {
    try {
      // if (event.user!.firstName!.isNotEmpty ||
      //     event.user!.email!.isNotEmpty ||
      //     event.user!.password!.isNotEmpty ||
      //     event.user!.login.isNotEmpty) {
      //   ManagedUserVMBuilder userBuilder = ManagedUserVMBuilder();
      //   userBuilder.firstName = event.user!.firstName;
      //   userBuilder.lastName = event.user!.lastName;
      //   userBuilder.email = event.user!.email;
      //   userBuilder.password = event.user!.password;
      //   userBuilder.login = event.user!.login;
      //   userBuilder.activated = true;

      //  ManagedUserVM user = userBuilder.build();
      debugPrint(event.user!.email);
      debugPrint(event.user!.password);
      debugPrint(event.user!.login);
      if (event.user!.firstName != null) {
        final response = await Openapi()
            .getAccountResourceApi()
            .registerAccount(managedUserVM: event.user!);
        log(event.user!.firstName!);
        debugPrint("token--$response and statusCode => ${response.statusCode}");

        if (response.statusCode == 200 || response.statusCode == 201) {
          emit(RegisterLoaded(isLoad: true));
        } else {
          emit(RegisterLoadError(error: response.statusMessage));
        }
      } else {
        emit(RegisterLoadError(error: "response.statusMessage"));
      }
    } catch (e) {
      emit(RegisterLoadError(error: e.toString()));
    }
  }

  _checkActiveUser(
      ActivateAccountEvent event, Emitter<SignupState> emit) async {
    try {
      emit(SignupInitial());
      if (event.activeKey.isNotEmpty && event.activeKey != null) {
        final response = await Openapi()
            .getAccountResourceApi()
            .activateAccount(key: event.activeKey);
        if (response.statusCode == 200 || response.statusCode == 201) {
          emit(ActivateAccountLoaded());
        } else {
          emit(RegisterLoadError(error: 'Response Error'));
        }
      } else {
        emit(RegisterLoadError(error: 'Key Error'));
      }
    } catch (e) {
      emit(RegisterLoadError(error: e.toString()));
    }
  }
}
