import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:student/domain/core/config/injectable.core.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        started: (e) => emit(state.copyWith(
          validateFields: false,
          isLoading: false,
          updatedOption: none(),
        )),
        editingToggled: (e) =>
            emit(state.copyWith(isEditing: !state.isEditing)),
        saveButtonPressed: (e) async {
          // save profile
          // Validate user input
          final passedValidation = e.formKey.currentState!.validate();
          if (passedValidation) {
            emit(state.copyWith(
              updatedOption: none(),
              isLoading: true,
            ));

            // update fields before saving
            final resp = await getIt<ParseUser>().save();

            emit(state.copyWith(
              updatedOption: some(resp.success),
              isLoading: true,
            ));
          } else {
            emit(state.copyWith(
              validateFields: true,
              isLoading: false,
              updatedOption: none(),
            ));
          }
        },
      );
    });
  }
}
