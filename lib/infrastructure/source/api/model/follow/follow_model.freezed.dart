// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'follow_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiFollowModel _$ApiFollowModelFromJson(Map<String, dynamic> json) {
  return _ApiFollowModel.fromJson(json);
}

/// @nodoc
class _$ApiFollowModelTearOff {
  const _$ApiFollowModelTearOff();

  _ApiFollowModel call(
      {required String id,
      @JsonKey(name: 'follow_status') required String followStatus,
      required ApiUserModel follower,
      required ApiUserModel user}) {
    return _ApiFollowModel(
      id: id,
      followStatus: followStatus,
      follower: follower,
      user: user,
    );
  }

  ApiFollowModel fromJson(Map<String, Object?> json) {
    return ApiFollowModel.fromJson(json);
  }
}

/// @nodoc
const $ApiFollowModel = _$ApiFollowModelTearOff();

/// @nodoc
mixin _$ApiFollowModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'follow_status')
  String get followStatus => throw _privateConstructorUsedError;
  ApiUserModel get follower => throw _privateConstructorUsedError;
  ApiUserModel get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiFollowModelCopyWith<ApiFollowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiFollowModelCopyWith<$Res> {
  factory $ApiFollowModelCopyWith(
          ApiFollowModel value, $Res Function(ApiFollowModel) then) =
      _$ApiFollowModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'follow_status') String followStatus,
      ApiUserModel follower,
      ApiUserModel user});

  $ApiUserModelCopyWith<$Res> get follower;
  $ApiUserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$ApiFollowModelCopyWithImpl<$Res>
    implements $ApiFollowModelCopyWith<$Res> {
  _$ApiFollowModelCopyWithImpl(this._value, this._then);

  final ApiFollowModel _value;
  // ignore: unused_field
  final $Res Function(ApiFollowModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? followStatus = freezed,
    Object? follower = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      followStatus: followStatus == freezed
          ? _value.followStatus
          : followStatus // ignore: cast_nullable_to_non_nullable
              as String,
      follower: follower == freezed
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as ApiUserModel,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ApiUserModel,
    ));
  }

  @override
  $ApiUserModelCopyWith<$Res> get follower {
    return $ApiUserModelCopyWith<$Res>(_value.follower, (value) {
      return _then(_value.copyWith(follower: value));
    });
  }

  @override
  $ApiUserModelCopyWith<$Res> get user {
    return $ApiUserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$ApiFollowModelCopyWith<$Res>
    implements $ApiFollowModelCopyWith<$Res> {
  factory _$ApiFollowModelCopyWith(
          _ApiFollowModel value, $Res Function(_ApiFollowModel) then) =
      __$ApiFollowModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'follow_status') String followStatus,
      ApiUserModel follower,
      ApiUserModel user});

  @override
  $ApiUserModelCopyWith<$Res> get follower;
  @override
  $ApiUserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$ApiFollowModelCopyWithImpl<$Res>
    extends _$ApiFollowModelCopyWithImpl<$Res>
    implements _$ApiFollowModelCopyWith<$Res> {
  __$ApiFollowModelCopyWithImpl(
      _ApiFollowModel _value, $Res Function(_ApiFollowModel) _then)
      : super(_value, (v) => _then(v as _ApiFollowModel));

  @override
  _ApiFollowModel get _value => super._value as _ApiFollowModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? followStatus = freezed,
    Object? follower = freezed,
    Object? user = freezed,
  }) {
    return _then(_ApiFollowModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      followStatus: followStatus == freezed
          ? _value.followStatus
          : followStatus // ignore: cast_nullable_to_non_nullable
              as String,
      follower: follower == freezed
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as ApiUserModel,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ApiUserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiFollowModel implements _ApiFollowModel {
  const _$_ApiFollowModel(
      {required this.id,
      @JsonKey(name: 'follow_status') required this.followStatus,
      required this.follower,
      required this.user});

  factory _$_ApiFollowModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApiFollowModelFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'follow_status')
  final String followStatus;
  @override
  final ApiUserModel follower;
  @override
  final ApiUserModel user;

  @override
  String toString() {
    return 'ApiFollowModel(id: $id, followStatus: $followStatus, follower: $follower, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiFollowModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.followStatus, followStatus) &&
            const DeepCollectionEquality().equals(other.follower, follower) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(followStatus),
      const DeepCollectionEquality().hash(follower),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$ApiFollowModelCopyWith<_ApiFollowModel> get copyWith =>
      __$ApiFollowModelCopyWithImpl<_ApiFollowModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiFollowModelToJson(this);
  }
}

abstract class _ApiFollowModel implements ApiFollowModel {
  const factory _ApiFollowModel(
      {required String id,
      @JsonKey(name: 'follow_status') required String followStatus,
      required ApiUserModel follower,
      required ApiUserModel user}) = _$_ApiFollowModel;

  factory _ApiFollowModel.fromJson(Map<String, dynamic> json) =
      _$_ApiFollowModel.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'follow_status')
  String get followStatus;
  @override
  ApiUserModel get follower;
  @override
  ApiUserModel get user;
  @override
  @JsonKey(ignore: true)
  _$ApiFollowModelCopyWith<_ApiFollowModel> get copyWith =>
      throw _privateConstructorUsedError;
}
