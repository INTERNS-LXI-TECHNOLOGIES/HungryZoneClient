import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:openapi/openapi.dart';

part 'password_event.dart';
part 'password_state.dart';

class PasswordBloc extends Bloc<PasswordEvent, PasswordState> {
  PasswordBloc() : super(PasswordInitial()) {
    on<ForgotPasswordEvent>(_ForgotPasswordReset);
    on<ForgotPasswordKeyEvent>(_ForgotPasswordResetFinish);
  }
  _ForgotPasswordReset(
      ForgotPasswordEvent event, Emitter<PasswordState> emit) async {
    try {
      if (event.emailId != null || event.emailId.isNotEmpty) {
        final body = event.emailId;
        final resonse = await Openapi()
            .getAccountResourceApi()
            .requestPasswordReset(body: body);
        if (resonse.statusCode == 200 || resonse.statusCode == 201) {
        } else {
          emit(ForgotPasswordLoadError(error: 'something went wrong'));
        }
      } else {
        emit(ForgotPasswordLoadError(error: 'body is empty'));
      }
    } catch (e) {
      emit(ForgotPasswordLoadError(error: e.toString()));
    }
  }

  _ForgotPasswordResetFinish(
      ForgotPasswordKeyEvent event, Emitter<PasswordState> emit) async {
    try {
      if (event.newPasswordBody != null ||
          event.newPasswordBody.key!.isNotEmpty &&
              event.newPasswordBody.newPassword!.isNotEmpty) {
        final response = await Openapi()
            .getAccountResourceApi()
            .finishPasswordReset(keyAndPasswordVM: event.newPasswordBody);
        if (response.statusCode == 200 || response.statusCode == 201) {
          emit(ForgotPasswordLoaded());
        } else {
          emit(ForgotPasswordFinishLoadError(error: 'something went wrong'));
        }
      } else {
        emit(ForgotPasswordFinishLoadError(error: 'body is empty'));
      }
    } catch (e) {
      emit(ForgotPasswordFinishLoadError(error: e.toString()));
    }
  }
}
