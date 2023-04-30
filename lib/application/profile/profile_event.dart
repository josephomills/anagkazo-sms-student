part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;
  const factory ProfileEvent.editingToggled() = _EditingToggled;
  const factory ProfileEvent.savePressed(
      {required GlobalKey<FormState> formKey}) = _SavePressed;
}
