// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$ServiceModelCopyWithImpl<$Res, ServiceModel>;
  @useResult
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
class _$ServiceModelCopyWithImpl<$Res, $Val extends ServiceModel>
    implements $ServiceModelCopyWith<$Res> {
  _$ServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
    Object? type = null,
    Object? date = null,
    Object? attendance = null,
    Object? cediIncome = null,
    Object? foreignIncome = null,
    Object? numTithers = null,
    Object? treasurers = null,
    Object? treasurersSelfie = null,
    Object? servicePhoto = null,
    Object? membersPresent = null,
    Object? fellowship = null,
  }) {
    return _then(_value.copyWith(
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      attendance: null == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as int,
      cediIncome: null == cediIncome
          ? _value.cediIncome
          : cediIncome // ignore: cast_nullable_to_non_nullable
              as int,
      foreignIncome: null == foreignIncome
          ? _value.foreignIncome
          : foreignIncome // ignore: cast_nullable_to_non_nullable
              as int,
      numTithers: null == numTithers
          ? _value.numTithers
          : numTithers // ignore: cast_nullable_to_non_nullable
              as int,
      treasurers: null == treasurers
          ? _value.treasurers
          : treasurers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      treasurersSelfie: null == treasurersSelfie
          ? _value.treasurersSelfie
          : treasurersSelfie // ignore: cast_nullable_to_non_nullable
              as String,
      servicePhoto: null == servicePhoto
          ? _value.servicePhoto
          : servicePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      membersPresent: null == membersPresent
          ? _value.membersPresent
          : membersPresent // ignore: cast_nullable_to_non_nullable
              as List<MemberModel>,
      fellowship: null == fellowship
          ? _value.fellowship
          : fellowship // ignore: cast_nullable_to_non_nullable
              as FellowshipModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FellowshipModelCopyWith<$Res> get fellowship {
    return $FellowshipModelCopyWith<$Res>(_value.fellowship, (value) {
      return _then(_value.copyWith(fellowship: value) as $Val);
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
  @useResult
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
    extends _$ServiceModelCopyWithImpl<$Res, _$_ServiceModel>
    implements _$$_ServiceModelCopyWith<$Res> {
  __$$_ServiceModelCopyWithImpl(
      _$_ServiceModel _value, $Res Function(_$_ServiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
    Object? type = null,
    Object? date = null,
    Object? attendance = null,
    Object? cediIncome = null,
    Object? foreignIncome = null,
    Object? numTithers = null,
    Object? treasurers = null,
    Object? treasurersSelfie = null,
    Object? servicePhoto = null,
    Object? membersPresent = null,
    Object? fellowship = null,
  }) {
    return _then(_$_ServiceModel(
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      attendance: null == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as int,
      cediIncome: null == cediIncome
          ? _value.cediIncome
          : cediIncome // ignore: cast_nullable_to_non_nullable
              as int,
      foreignIncome: null == foreignIncome
          ? _value.foreignIncome
          : foreignIncome // ignore: cast_nullable_to_non_nullable
              as int,
      numTithers: null == numTithers
          ? _value.numTithers
          : numTithers // ignore: cast_nullable_to_non_nullable
              as int,
      treasurers: null == treasurers
          ? _value._treasurers
          : treasurers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      treasurersSelfie: null == treasurersSelfie
          ? _value.treasurersSelfie
          : treasurersSelfie // ignore: cast_nullable_to_non_nullable
              as String,
      servicePhoto: null == servicePhoto
          ? _value.servicePhoto
          : servicePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      membersPresent: null == membersPresent
          ? _value._membersPresent
          : membersPresent // ignore: cast_nullable_to_non_nullable
              as List<MemberModel>,
      fellowship: null == fellowship
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
    if (_treasurers is EqualUnmodifiableListView) return _treasurers;
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
    if (_membersPresent is EqualUnmodifiableListView) return _membersPresent;
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
            (identical(other.objectId, objectId) ||
                other.objectId == objectId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.attendance, attendance) ||
                other.attendance == attendance) &&
            (identical(other.cediIncome, cediIncome) ||
                other.cediIncome == cediIncome) &&
            (identical(other.foreignIncome, foreignIncome) ||
                other.foreignIncome == foreignIncome) &&
            (identical(other.numTithers, numTithers) ||
                other.numTithers == numTithers) &&
            const DeepCollectionEquality()
                .equals(other._treasurers, _treasurers) &&
            (identical(other.treasurersSelfie, treasurersSelfie) ||
                other.treasurersSelfie == treasurersSelfie) &&
            (identical(other.servicePhoto, servicePhoto) ||
                other.servicePhoto == servicePhoto) &&
            const DeepCollectionEquality()
                .equals(other._membersPresent, _membersPresent) &&
            (identical(other.fellowship, fellowship) ||
                other.fellowship == fellowship));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      objectId,
      type,
      date,
      attendance,
      cediIncome,
      foreignIncome,
      numTithers,
      const DeepCollectionEquality().hash(_treasurers),
      treasurersSelfie,
      servicePhoto,
      const DeepCollectionEquality().hash(_membersPresent),
      fellowship);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceModelCopyWith<_$_ServiceModel> get copyWith =>
      __$$_ServiceModelCopyWithImpl<_$_ServiceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceModelToJson(
      this,
    );
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
