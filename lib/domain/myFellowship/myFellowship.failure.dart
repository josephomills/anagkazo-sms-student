import 'package:freezed_annotation/freezed_annotation.dart';

part 'myFellowship.failure.freezed.dart';

@freezed
abstract class MyFellowshipFailure with _$MyFellowshipFailure {
  const factory MyFellowshipFailure.serverError() = _ServerError;
}
