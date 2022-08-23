import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:openapi/openapi.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    on<RegisterUserEvent>((event, emit) {
      try {
        if (event.user!.firstName!.isNotEmpty ||
            event.user!.email!.isNotEmpty ||
            event.user!.password!.isNotEmpty) {
          ManagedUserVMBuilder userBuilder = ManagedUserVMBuilder();
          userBuilder.firstName = event.user!.firstName;
          userBuilder.lastName = event.user!.lastName;
          userBuilder.email = event.user!.email;
          userBuilder.password = event.user!.password;

          ManagedUserVM user = userBuilder.build();

          final response = Openapi()
              .getAccountResourceApi()
              .registerAccount(managedUserVM: user);
          emit(RegisterLoaded());

          // Openapi().getUserJwtControllerApi().authorize(loginVM: loginVM)
        } else {
          (emit(RegisterLoading()));
        }
      } catch (e) {
        emit(RegisterLoadError(error: e.toString()));
      }
    });
  }
}
