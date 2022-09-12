import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard.failure.freezed.dart';

@freezed
abstract class DashboardFailure with _$DashboardFailure {
  const factory DashboardFailure.serverError() = _ServerError;
}
