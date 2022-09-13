import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_fellowship_event.dart';
part 'my_fellowship_state.dart';
part 'my_fellowship_bloc.freezed.dart';

class MyFellowshipBloc extends Bloc<MyFellowshipEvent, MyFellowshipState> {
  MyFellowshipBloc() : super(_Initial()) {
    on<MyFellowshipEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
