import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student/domain/auth/auth.facade.dart';
import 'package:student/domain/auth/auth.failure.dart';
import 'package:student/infrastructure/auth/dto/login.dto.dart';
import 'package:student/infrastructure/auth/models/user.model.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthFacade _authFacade;

  LoginBloc(this._authFacade) : super(LoginState.initial()) {
    on<LoginEvent>((event, emitter) {
      event.map(
        usernameChanged: (e) => emitter.call(
          state.copyWith(
            email: e.username,
            authFailureOrSuccessOption: none(),
          ),
        ),
        passwordChanged: (e) => emitter.call(
          state.copyWith(
            password: e.password,
            authFailureOrSuccessOption: none(),
          ),
        ),
        loginButtonPressed: (e) async {
          // Load
          emitter.call(state.copyWith(
            isLoading: true,
            authFailureOrSuccessOption: none(),
          ));

          //------ Validate user input
          // if(fields are validated){

          // Attempt login
          final authFailureOrSuccess =
              await _authFacade.loginWithUsernameAndPassword(
                  loginDTO:
                      LoginDTO(username: e.username, password: e.password));

          // Emit login result
          emitter.call(state.copyWith(
            isLoading: false,
            authFailureOrSuccessOption: some(authFailureOrSuccess),
          ));

          // ---con't
          // } else{
          //   emitter.call(state.copyWith(
          //     validateFields: true,
          //     authFailureOrSuccessOption: none(),
          //   ),
          // );
          // }
        },
      );
    });
  }
}
