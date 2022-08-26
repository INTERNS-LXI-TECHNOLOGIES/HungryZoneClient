import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:openapi/openapi.dart';

part 'password_event.dart';
part 'password_state.dart';

class PasswordBloc extends Bloc<PasswordEvent, PasswordState> {
  PasswordBloc() : super(PasswordInitial()) {
    on<ForgotPasswordEvent>(_FrorgotPasswordReset);
  }
  _FrorgotPasswordReset(
      ForgotPasswordEvent event, Emitter<PasswordState> emit) async {
    try {
      if (event.emailId != null || event.emailId.isNotEmpty) {
        final body = event.emailId;
        final resonse = await Openapi()
            .getAccountResourceApi()
            .requestPasswordReset(body: body);
        if (resonse.statusCode == 200 || resonse.statusCode == 201) {
          emit(ForgotPasswordLoaded());
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
}
