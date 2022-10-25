import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:student/domain/myFellowship/myFellowship.facade.dart';
import 'package:student/domain/myFellowship/myFellowship.failure.dart';
import 'package:student/infrastructure/myFellowship/models/service/service.object.dart';

part 'my_fellowship_event.dart';
part 'my_fellowship_state.dart';
part 'my_fellowship_bloc.freezed.dart';

@injectable
class MyFellowshipBloc extends Bloc<MyFellowshipEvent, MyFellowshipState> {
  final MyFellowshipFacade _fellowshipFacade;

  MyFellowshipBloc(this._fellowshipFacade)
      : super(MyFellowshipState.initial()) {
    on<MyFellowshipEvent>((event, emitter) async {
      await event.map<FutureOr<void>>(
        getMyFellowshipServices: (e) async {
          print("called");
          // Load
          emitter.call(state.copyWith(isLoading: true));
          print("loading");
          // get services
          final failureOrServices =
              (await _fellowshipFacade.getFellowshipServices());
          print("fetched");
          // Compute averages
          var services = failureOrServices.getOrElse(() => <ServiceObject>[]);
          int sumAttendance = 0;
          num sumIncome = 0;
          for (ServiceObject s in services) {
            sumIncome += s.cediIncome!;
            sumAttendance += s.attendance!;
          }
          print("done");
          // return
          emitter.call(state.copyWith(
            isLoading: false,
            avgAttendance: (sumAttendance / services.length).toStringAsFixed(0),
            avgIncome: (sumIncome / services.length).toStringAsFixed(2),
            failureOrServicesOption: some(failureOrServices),
          ));
        },
      );
    });
  }
}
