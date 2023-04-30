// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() editingToggled,
    required TResult Function(GlobalKey<FormState> formKey) savePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? editingToggled,
    TResult? Function(GlobalKey<FormState> formKey)? savePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? editingToggled,
    TResult Function(GlobalKey<FormState> formKey)? savePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EditingToggled value) editingToggled,
    required TResult Function(_SavePressed value) savePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EditingToggled value)? editingToggled,
    TResult? Function(_SavePressed value)? savePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EditingToggled value)? editingToggled,
    TResult Function(_SavePressed value)? savePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ProfileEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() editingToggled,
    required TResult Function(GlobalKey<FormState> formKey) savePressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? editingToggled,
    TResult? Function(GlobalKey<FormState> formKey)? savePressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? editingToggled,
    TResult Function(GlobalKey<FormState> formKey)? savePressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EditingToggled value) editingToggled,
    required TResult Function(_SavePressed value) savePressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EditingToggled value)? editingToggled,
    TResult? Function(_SavePressed value)? savePressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EditingToggled value)? editingToggled,
    TResult Function(_SavePressed value)? savePressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProfileEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_EditingToggledCopyWith<$Res> {
  factory _$$_EditingToggledCopyWith(
          _$_EditingToggled value, $Res Function(_$_EditingToggled) then) =
      __$$_EditingToggledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EditingToggledCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_EditingToggled>
    implements _$$_EditingToggledCopyWith<$Res> {
  __$$_EditingToggledCopyWithImpl(
      _$_EditingToggled _value, $Res Function(_$_EditingToggled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EditingToggled implements _EditingToggled {
  const _$_EditingToggled();

  @override
  String toString() {
    return 'ProfileEvent.editingToggled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EditingToggled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() editingToggled,
    required TResult Function(GlobalKey<FormState> formKey) savePressed,
  }) {
    return editingToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? editingToggled,
    TResult? Function(GlobalKey<FormState> formKey)? savePressed,
  }) {
    return editingToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? editingToggled,
    TResult Function(GlobalKey<FormState> formKey)? savePressed,
    required TResult orElse(),
  }) {
    if (editingToggled != null) {
      return editingToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EditingToggled value) editingToggled,
    required TResult Function(_SavePressed value) savePressed,
  }) {
    return editingToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EditingToggled value)? editingToggled,
    TResult? Function(_SavePressed value)? savePressed,
  }) {
    return editingToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EditingToggled value)? editingToggled,
    TResult Function(_SavePressed value)? savePressed,
    required TResult orElse(),
  }) {
    if (editingToggled != null) {
      return editingToggled(this);
    }
    return orElse();
  }
}

abstract class _EditingToggled implements ProfileEvent {
  const factory _EditingToggled() = _$_EditingToggled;
}

/// @nodoc
abstract class _$$_SavePressedCopyWith<$Res> {
  factory _$$_SavePressedCopyWith(
          _$_SavePressed value, $Res Function(_$_SavePressed) then) =
      __$$_SavePressedCopyWithImpl<$Res>;
  @useResult
  $Res call({GlobalKey<FormState> formKey});
}

/// @nodoc
class __$$_SavePressedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_SavePressed>
    implements _$$_SavePressedCopyWith<$Res> {
  __$$_SavePressedCopyWithImpl(
      _$_SavePressed _value, $Res Function(_$_SavePressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
  }) {
    return _then(_$_SavePressed(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
    ));
  }
}

/// @nodoc

class _$_SavePressed implements _SavePressed {
  const _$_SavePressed({required this.formKey});

  @override
  final GlobalKey<FormState> formKey;

  @override
  String toString() {
    return 'ProfileEvent.savePressed(formKey: $formKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavePressed &&
            (identical(other.formKey, formKey) || other.formKey == formKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavePressedCopyWith<_$_SavePressed> get copyWith =>
      __$$_SavePressedCopyWithImpl<_$_SavePressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() editingToggled,
    required TResult Function(GlobalKey<FormState> formKey) savePressed,
  }) {
    return savePressed(formKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? editingToggled,
    TResult? Function(GlobalKey<FormState> formKey)? savePressed,
  }) {
    return savePressed?.call(formKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? editingToggled,
    TResult Function(GlobalKey<FormState> formKey)? savePressed,
    required TResult orElse(),
  }) {
    if (savePressed != null) {
      return savePressed(formKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EditingToggled value) editingToggled,
    required TResult Function(_SavePressed value) savePressed,
  }) {
    return savePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EditingToggled value)? editingToggled,
    TResult? Function(_SavePressed value)? savePressed,
  }) {
    return savePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EditingToggled value)? editingToggled,
    TResult Function(_SavePressed value)? savePressed,
    required TResult orElse(),
  }) {
    if (savePressed != null) {
      return savePressed(this);
    }
    return orElse();
  }
}

abstract class _SavePressed implements ProfileEvent {
  const factory _SavePressed({required final GlobalKey<FormState> formKey}) =
      _$_SavePressed;

  GlobalKey<FormState> get formKey;
  @JsonKey(ignore: true)
  _$$_SavePressedCopyWith<_$_SavePressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get validateFields => throw _privateConstructorUsedError;
  Option<bool> get updatedOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isEditing,
      bool validateFields,
      Option<bool> updatedOption});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isEditing = null,
    Object? validateFields = null,
    Object? updatedOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      validateFields: null == validateFields
          ? _value.validateFields
          : validateFields // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedOption: null == updatedOption
          ? _value.updatedOption
          : updatedOption // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isEditing,
      bool validateFields,
      Option<bool> updatedOption});
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileState>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isEditing = null,
    Object? validateFields = null,
    Object? updatedOption = null,
  }) {
    return _then(_$_ProfileState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      validateFields: null == validateFields
          ? _value.validateFields
          : validateFields // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedOption: null == updatedOption
          ? _value.updatedOption
          : updatedOption // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required this.isLoading,
      required this.isEditing,
      required this.validateFields,
      required this.updatedOption});

  @override
  final bool isLoading;
  @override
  final bool isEditing;
  @override
  final bool validateFields;
  @override
  final Option<bool> updatedOption;

  @override
  String toString() {
    return 'ProfileState(isLoading: $isLoading, isEditing: $isEditing, validateFields: $validateFields, updatedOption: $updatedOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.validateFields, validateFields) ||
                other.validateFields == validateFields) &&
            (identical(other.updatedOption, updatedOption) ||
                other.updatedOption == updatedOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isEditing, validateFields, updatedOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final bool isLoading,
      required final bool isEditing,
      required final bool validateFields,
      required final Option<bool> updatedOption}) = _$_ProfileState;

  @override
  bool get isLoading;
  @override
  bool get isEditing;
  @override
  bool get validateFields;
  @override
  Option<bool> get updatedOption;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
