// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) {
  return _ServiceModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceModel {
  String get objectId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  int get attendance => throw _privateConstructorUsedError;
  int get cediIncome => throw _privateConstructorUsedError;
  int get foreignIncome => throw _privateConstructorUsedError;
  int get numTithers => throw _privateConstructorUsedError;
  List<UserModel> get treasurers => throw _privateConstructorUsedError;
  String get treasurersSelfie => throw _privateConstructorUsedError;
  String get servicePhoto => throw _privateConstructorUsedError;
  List<MemberModel> get membersPresent => throw _privateConstructorUsedError;
  FellowshipModel get fellowship => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceModelCopyWith<ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceModelCopyWith<$Res> {
  factory $ServiceModelCopyWith(
          ServiceModel value, $Res Function(ServiceModel) then) =
      _$ServiceModelCopyWithImpl<$Res>;
  $Res call(
      {String objectId,
      String type,
      DateTime date,
      int attendance,
      int cediIncome,
      int foreignIncome,
      int numTithers,
      List<UserModel> treasurers,
      String treasurersSelfie,
      String servicePhoto,
      List<MemberModel> membersPresent,
      FellowshipModel fellowship});

  $FellowshipModelCopyWith<$Res> get fellowship;
}

/// @nodoc
class _$ServiceModelCopyWithImpl<$Res> implements $ServiceModelCopyWith<$Res> {
  _$ServiceModelCopyWithImpl(this._value, this._then);

  final ServiceModel _value;
  // ignore: unused_field
  final $Res Function(ServiceModel) _then;

  @override
  $Res call({
    Object? objectId = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? attendance = freezed,
    Object? cediIncome = freezed,
    Object? foreignIncome = freezed,
    Object? numTithers = freezed,
    Object? treasurers = freezed,
    Object? treasurersSelfie = freezed,
    Object? servicePhoto = freezed,
    Object? membersPresent = freezed,
    Object? fellowship = freezed,
  }) {
    return _then(_value.copyWith(
      objectId: objectId == freezed
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as int,
      cediIncome: cediIncome == freezed
          ? _value.cediIncome
          : cediIncome // ignore: cast_nullable_to_non_nullable
              as int,
      foreignIncome: foreignIncome == freezed
          ? _value.foreignIncome
          : foreignIncome // ignore: cast_nullable_to_non_nullable
              as int,
      numTithers: numTithers == freezed
          ? _value.numTithers
          : numTithers // ignore: cast_nullable_to_non_nullable
              as int,
      treasurers: treasurers == freezed
          ? _value.treasurers
          : treasurers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      treasurersSelfie: treasurersSelfie == freezed
          ? _value.treasurersSelfie
          : treasurersSelfie // ignore: cast_nullable_to_non_nullable
              as String,
      servicePhoto: servicePhoto == freezed
          ? _value.servicePhoto
          : servicePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      membersPresent: membersPresent == freezed
          ? _value.membersPresent
          : membersPresent // ignore: cast_nullable_to_non_nullable
              as List<MemberModel>,
      fellowship: fellowship == freezed
          ? _value.fellowship
          : fellowship // ignore: cast_nullable_to_non_nullable
              as FellowshipModel,
    ));
  }

  @override
  $FellowshipModelCopyWith<$Res> get fellowship {
    return $FellowshipModelCopyWith<$Res>(_value.fellowship, (value) {
      return _then(_value.copyWith(fellowship: value));
    });
  }
}

/// @nodoc
abstract class _$$_ServiceModelCopyWith<$Res>
    implements $ServiceModelCopyWith<$Res> {
  factory _$$_ServiceModelCopyWith(
          _$_ServiceModel value, $Res Function(_$_ServiceModel) then) =
      __$$_ServiceModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String objectId,
      String type,
      DateTime date,
      int attendance,
      int cediIncome,
      int foreignIncome,
      int numTithers,
      List<UserModel> treasurers,
      String treasurersSelfie,
      String servicePhoto,
      List<MemberModel> membersPresent,
      FellowshipModel fellowship});

  @override
  $FellowshipModelCopyWith<$Res> get fellowship;
}

/// @nodoc
class __$$_ServiceModelCopyWithImpl<$Res>
    extends _$ServiceModelCopyWithImpl<$Res>
    implements _$$_ServiceModelCopyWith<$Res> {
  __$$_ServiceModelCopyWithImpl(
      _$_ServiceModel _value, $Res Function(_$_ServiceModel) _then)
      : super(_value, (v) => _then(v as _$_ServiceModel));

  @override
  _$_ServiceModel get _value => super._value as _$_ServiceModel;

  @override
  $Res call({
    Object? objectId = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? attendance = freezed,
    Object? cediIncome = freezed,
    Object? foreignIncome = freezed,
    Object? numTithers = freezed,
    Object? treasurers = freezed,
    Object? treasurersSelfie = freezed,
    Object? servicePhoto = freezed,
    Object? membersPresent = freezed,
    Object? fellowship = freezed,
  }) {
    return _then(_$_ServiceModel(
      objectId: objectId == freezed
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as int,
      cediIncome: cediIncome == freezed
          ? _value.cediIncome
          : cediIncome // ignore: cast_nullable_to_non_nullable
              as int,
      foreignIncome: foreignIncome == freezed
          ? _value.foreignIncome
          : foreignIncome // ignore: cast_nullable_to_non_nullable
              as int,
      numTithers: numTithers == freezed
          ? _value.numTithers
          : numTithers // ignore: cast_nullable_to_non_nullable
              as int,
      treasurers: treasurers == freezed
          ? _value._treasurers
          : treasurers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      treasurersSelfie: treasurersSelfie == freezed
          ? _value.treasurersSelfie
          : treasurersSelfie // ignore: cast_nullable_to_non_nullable
              as String,
      servicePhoto: servicePhoto == freezed
          ? _value.servicePhoto
          : servicePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      membersPresent: membersPresent == freezed
          ? _value._membersPresent
          : membersPresent // ignore: cast_nullable_to_non_nullable
              as List<MemberModel>,
      fellowship: fellowship == freezed
          ? _value.fellowship
          : fellowship // ignore: cast_nullable_to_non_nullable
              as FellowshipModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceModel implements _ServiceModel {
  const _$_ServiceModel(
      {required this.objectId,
      required this.type,
      required this.date,
      required this.attendance,
      required this.cediIncome,
      this.foreignIncome = 0,
      this.numTithers = 0,
      required final List<UserModel> treasurers,
      required this.treasurersSelfie,
      required this.servicePhoto,
      required final List<MemberModel> membersPresent,
      required this.fellowship})
      : _treasurers = treasurers,
        _membersPresent = membersPresent;

  factory _$_ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceModelFromJson(json);

  @override
  final String objectId;
  @override
  final String type;
  @override
  final DateTime date;
  @override
  final int attendance;
  @override
  final int cediIncome;
  @override
  @JsonKey()
  final int foreignIncome;
  @override
  @JsonKey()
  final int numTithers;
  final List<UserModel> _treasurers;
  @override
  List<UserModel> get treasurers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_treasurers);
  }

  @override
  final String treasurersSelfie;
  @override
  final String servicePhoto;
  final List<MemberModel> _membersPresent;
  @override
  List<MemberModel> get membersPresent {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_membersPresent);
  }

  @override
  final FellowshipModel fellowship;

  @override
  String toString() {
    return 'ServiceModel(objectId: $objectId, type: $type, date: $date, attendance: $attendance, cediIncome: $cediIncome, foreignIncome: $foreignIncome, numTithers: $numTithers, treasurers: $treasurers, treasurersSelfie: $treasurersSelfie, servicePhoto: $servicePhoto, membersPresent: $membersPresent, fellowship: $fellowship)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceModel &&
            const DeepCollectionEquality().equals(other.objectId, objectId) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.attendance, attendance) &&
            const DeepCollectionEquality()
                .equals(other.cediIncome, cediIncome) &&
            const DeepCollectionEquality()
                .equals(other.foreignIncome, foreignIncome) &&
            const DeepCollectionEquality()
                .equals(other.numTithers, numTithers) &&
            const DeepCollectionEquality()
                .equals(other._treasurers, _treasurers) &&
            const DeepCollectionEquality()
                .equals(other.treasurersSelfie, treasurersSelfie) &&
            const DeepCollectionEquality()
                .equals(other.servicePhoto, servicePhoto) &&
            const DeepCollectionEquality()
                .equals(other._membersPresent, _membersPresent) &&
            const DeepCollectionEquality()
                .equals(other.fellowship, fellowship));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(objectId),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(attendance),
      const DeepCollectionEquality().hash(cediIncome),
      const DeepCollectionEquality().hash(foreignIncome),
      const DeepCollectionEquality().hash(numTithers),
      const DeepCollectionEquality().hash(_treasurers),
      const DeepCollectionEquality().hash(treasurersSelfie),
      const DeepCollectionEquality().hash(servicePhoto),
      const DeepCollectionEquality().hash(_membersPresent),
      const DeepCollectionEquality().hash(fellowship));

  @JsonKey(ignore: true)
  @override
  _$$_ServiceModelCopyWith<_$_ServiceModel> get copyWith =>
      __$$_ServiceModelCopyWithImpl<_$_ServiceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceModelToJson(this);
  }
}

abstract class _ServiceModel implements ServiceModel {
  const factory _ServiceModel(
      {required final String objectId,
      required final String type,
      required final DateTime date,
      required final int attendance,
      required final int cediIncome,
      final int foreignIncome,
      final int numTithers,
      required final List<UserModel> treasurers,
      required final String treasurersSelfie,
      required final String servicePhoto,
      required final List<MemberModel> membersPresent,
      required final FellowshipModel fellowship}) = _$_ServiceModel;

  factory _ServiceModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceModel.fromJson;

  @override
  String get objectId;
  @override
  String get type;
  @override
  DateTime get date;
  @override
  int get attendance;
  @override
  int get cediIncome;
  @override
  int get foreignIncome;
  @override
  int get numTithers;
  @override
  List<UserModel> get treasurers;
  @override
  String get treasurersSelfie;
  @override
  String get servicePhoto;
  @override
  List<MemberModel> get membersPresent;
  @override
  FellowshipModel get fellowship;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceModelCopyWith<_$_ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
