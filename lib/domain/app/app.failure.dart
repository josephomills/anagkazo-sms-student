import 'package:freezed_annotation/freezed_annotation.dart';

part 'app.failure.freezed.dart';

@freezed
abstract class AppFailure with _$AppFailure {
  const factory AppFailure.serverError({String? message}) = _ServerError;
}
