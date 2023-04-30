part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool isLoading,
    required bool isEditing,
    required bool validateFields,
    required Option<bool> updatedOption,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        isLoading: false,
        isEditing: false,
        validateFields: false,
        updatedOption: none(),
      );
}
