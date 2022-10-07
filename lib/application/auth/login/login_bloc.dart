import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:student/application/core/injectable.core.dart';
import 'package:student/domain/auth/auth.facade.dart';
import 'package:student/domain/auth/auth.failure.dart';
import 'package:student/infrastructure/auth/dto/login.dto.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthFacade _authFacade;

  LoginBloc(this._authFacade) : super(LoginState.initial()) {
    on<LoginEvent>((event, emitter) async {
      await event.map<FutureOr<void>>(
        usernameChanged: (e) => emitter.call(
          state.copyWith(
            username: e.username,
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
          // Validate user input
          final passedValidation =
              getIt<GlobalKey<FormState>>().currentState!.validate();

          if (passedValidation) {
            emitter.call(state.copyWith(
              isLoading: true,
              authFailureOrSuccessOption: none(),
            ));

            // Attempt login
            final authFailureOrSuccess =
                await _authFacade.loginWithUsernameAndPassword(
              loginDTO: LoginDTO(
                username: state.username,
                password: state.password,
              ),
            );

            // Emit login result
            emitter.call(state.copyWith(
              validateFields: false,
              isLoading: false,
              authFailureOrSuccessOption: some(authFailureOrSuccess),
            ));
          } else {
            // Failed validation
            emitter.call(
              state.copyWith(
                isLoading: false,
                validateFields: true,
                authFailureOrSuccessOption: none(),
              ),
            );
          }
        },
      );
    });
  }
}
