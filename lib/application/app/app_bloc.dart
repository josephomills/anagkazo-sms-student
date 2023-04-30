import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:student/domain/app/app.facade.dart';
import 'package:student/domain/app/app.failure.dart';
import 'package:student/infrastructure/academics/models/rotation.object.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@singleton
class AppBloc extends Bloc<AppEvent, AppState> {
  final AppFacade _appFacade;

  AppBloc(this._appFacade) : super(AppState.initial()) {
    on<AppEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        started: (e) {
          // TODO: pick settings from disk
          // Fetch rotations
          add(const AppEvent.rotationsFetched());
        },
        themeModeToggled: (e) {
          // change state variable
          emit(state.copyWith(themeMode: e.themeMode));
          // change variable on disk
        },
        rotationsFetched: (e) async {
          final failureOrRotations = await _appFacade.getAllRotations();
          emit(
            state.copyWith(failureOrRotationsOption: some(failureOrRotations)),
          );
        },
      );
    });
  }
}
