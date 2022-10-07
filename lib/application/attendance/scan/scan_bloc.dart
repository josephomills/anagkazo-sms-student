import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:student/domain/attendance/scan/scan.facade.dart';

part 'scan_event.dart';
part 'scan_state.dart';
part 'scan_bloc.freezed.dart';

@injectable
class ScanBloc extends Bloc<ScanEvent, ScanState> {
  final ScanFacade _scanFacade;

  ScanBloc(this._scanFacade) : super(ScanState.initial()) {
    on<ScanEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        started: (e) {},
      );
    });
  }
}
