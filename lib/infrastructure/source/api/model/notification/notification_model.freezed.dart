// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiNotificationModel _$ApiNotificationModelFromJson(Map<String, dynamic> json) {
  return _ApiNotificationModel.fromJson(json);
}

/// @nodoc
class _$ApiNotificationModelTearOff {
  const _$ApiNotificationModelTearOff();

  _ApiNotificationModel call(
      {required String id,
      @JsonKey(name: 'date_hour') required DateTime dateHour,
      @JsonKey(name: 'is_seen') required bool isSeen,
      @JsonKey(name: 'notification_type') required String notificationType,
      @JsonKey(name: 'group_linked') ApiGroupModel? groupLinked,
      @JsonKey(name: 'user_recipient') required ApiUserModel userRecipient,
      @JsonKey(name: 'user_linked') ApiUserModel? userLinked}) {
    return _ApiNotificationModel(
      id: id,
      dateHour: dateHour,
      isSeen: isSeen,
      notificationType: notificationType,
      groupLinked: groupLinked,
      userRecipient: userRecipient,
      userLinked: userLinked,
    );
  }

  ApiNotificationModel fromJson(Map<String, Object?> json) {
    return ApiNotificationModel.fromJson(json);
  }
}

/// @nodoc
const $ApiNotificationModel = _$ApiNotificationModelTearOff();

/// @nodoc
mixin _$ApiNotificationModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_hour')
  DateTime get dateHour => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_seen')
  bool get isSeen => throw _privateConstructorUsedError;
  @JsonKey(name: 'notification_type')
  String get notificationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_linked')
  ApiGroupModel? get groupLinked =>
      throw _privateConstructorUsedError; //@JsonKey(name: 'content_linked') ApiContentModel? contentLinked,
  @JsonKey(name: 'user_recipient')
  ApiUserModel get userRecipient => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_linked')
  ApiUserModel? get userLinked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiNotificationModelCopyWith<ApiNotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiNotificationModelCopyWith<$Res> {
  factory $ApiNotificationModelCopyWith(ApiNotificationModel value,
          $Res Function(ApiNotificationModel) then) =
      _$ApiNotificationModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'date_hour') DateTime dateHour,
      @JsonKey(name: 'is_seen') bool isSeen,
      @JsonKey(name: 'notification_type') String notificationType,
      @JsonKey(name: 'group_linked') ApiGroupModel? groupLinked,
      @JsonKey(name: 'user_recipient') ApiUserModel userRecipient,
      @JsonKey(name: 'user_linked') ApiUserModel? userLinked});

  $ApiGroupModelCopyWith<$Res>? get groupLinked;
  $ApiUserModelCopyWith<$Res> get userRecipient;
  $ApiUserModelCopyWith<$Res>? get userLinked;
}

/// @nodoc
class _$ApiNotificationModelCopyWithImpl<$Res>
    implements $ApiNotificationModelCopyWith<$Res> {
  _$ApiNotificationModelCopyWithImpl(this._value, this._then);

  final ApiNotificationModel _value;
  // ignore: unused_field
  final $Res Function(ApiNotificationModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? dateHour = freezed,
    Object? isSeen = freezed,
    Object? notificationType = freezed,
    Object? groupLinked = freezed,
    Object? userRecipient = freezed,
    Object? userLinked = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateHour: dateHour == freezed
          ? _value.dateHour
          : dateHour // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isSeen: isSeen == freezed
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
      groupLinked: groupLinked == freezed
          ? _value.groupLinked
          : groupLinked // ignore: cast_nullable_to_non_nullable
              as ApiGroupModel?,
      userRecipient: userRecipient == freezed
          ? _value.userRecipient
          : userRecipient // ignore: cast_nullable_to_non_nullable
              as ApiUserModel,
      userLinked: userLinked == freezed
          ? _value.userLinked
          : userLinked // ignore: cast_nullable_to_non_nullable
              as ApiUserModel?,
    ));
  }

  @override
  $ApiGroupModelCopyWith<$Res>? get groupLinked {
    if (_value.groupLinked == null) {
      return null;
    }

    return $ApiGroupModelCopyWith<$Res>(_value.groupLinked!, (value) {
      return _then(_value.copyWith(groupLinked: value));
    });
  }

  @override
  $ApiUserModelCopyWith<$Res> get userRecipient {
    return $ApiUserModelCopyWith<$Res>(_value.userRecipient, (value) {
      return _then(_value.copyWith(userRecipient: value));
    });
  }

  @override
  $ApiUserModelCopyWith<$Res>? get userLinked {
    if (_value.userLinked == null) {
      return null;
    }

    return $ApiUserModelCopyWith<$Res>(_value.userLinked!, (value) {
      return _then(_value.copyWith(userLinked: value));
    });
  }
}

/// @nodoc
abstract class _$ApiNotificationModelCopyWith<$Res>
    implements $ApiNotificationModelCopyWith<$Res> {
  factory _$ApiNotificationModelCopyWith(_ApiNotificationModel value,
          $Res Function(_ApiNotificationModel) then) =
      __$ApiNotificationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'date_hour') DateTime dateHour,
      @JsonKey(name: 'is_seen') bool isSeen,
      @JsonKey(name: 'notification_type') String notificationType,
      @JsonKey(name: 'group_linked') ApiGroupModel? groupLinked,
      @JsonKey(name: 'user_recipient') ApiUserModel userRecipient,
      @JsonKey(name: 'user_linked') ApiUserModel? userLinked});

  @override
  $ApiGroupModelCopyWith<$Res>? get groupLinked;
  @override
  $ApiUserModelCopyWith<$Res> get userRecipient;
  @override
  $ApiUserModelCopyWith<$Res>? get userLinked;
}

/// @nodoc
class __$ApiNotificationModelCopyWithImpl<$Res>
    extends _$ApiNotificationModelCopyWithImpl<$Res>
    implements _$ApiNotificationModelCopyWith<$Res> {
  __$ApiNotificationModelCopyWithImpl(
      _ApiNotificationModel _value, $Res Function(_ApiNotificationModel) _then)
      : super(_value, (v) => _then(v as _ApiNotificationModel));

  @override
  _ApiNotificationModel get _value => super._value as _ApiNotificationModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? dateHour = freezed,
    Object? isSeen = freezed,
    Object? notificationType = freezed,
    Object? groupLinked = freezed,
    Object? userRecipient = freezed,
    Object? userLinked = freezed,
  }) {
    return _then(_ApiNotificationModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateHour: dateHour == freezed
          ? _value.dateHour
          : dateHour // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isSeen: isSeen == freezed
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
      groupLinked: groupLinked == freezed
          ? _value.groupLinked
          : groupLinked // ignore: cast_nullable_to_non_nullable
              as ApiGroupModel?,
      userRecipient: userRecipient == freezed
          ? _value.userRecipient
          : userRecipient // ignore: cast_nullable_to_non_nullable
              as ApiUserModel,
      userLinked: userLinked == freezed
          ? _value.userLinked
          : userLinked // ignore: cast_nullable_to_non_nullable
              as ApiUserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiNotificationModel implements _ApiNotificationModel {
  const _$_ApiNotificationModel(
      {required this.id,
      @JsonKey(name: 'date_hour') required this.dateHour,
      @JsonKey(name: 'is_seen') required this.isSeen,
      @JsonKey(name: 'notification_type') required this.notificationType,
      @JsonKey(name: 'group_linked') this.groupLinked,
      @JsonKey(name: 'user_recipient') required this.userRecipient,
      @JsonKey(name: 'user_linked') this.userLinked});

  factory _$_ApiNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApiNotificationModelFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'date_hour')
  final DateTime dateHour;
  @override
  @JsonKey(name: 'is_seen')
  final bool isSeen;
  @override
  @JsonKey(name: 'notification_type')
  final String notificationType;
  @override
  @JsonKey(name: 'group_linked')
  final ApiGroupModel? groupLinked;
  @override //@JsonKey(name: 'content_linked') ApiContentModel? contentLinked,
  @JsonKey(name: 'user_recipient')
  final ApiUserModel userRecipient;
  @override
  @JsonKey(name: 'user_linked')
  final ApiUserModel? userLinked;

  @override
  String toString() {
    return 'ApiNotificationModel(id: $id, dateHour: $dateHour, isSeen: $isSeen, notificationType: $notificationType, groupLinked: $groupLinked, userRecipient: $userRecipient, userLinked: $userLinked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiNotificationModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.dateHour, dateHour) &&
            const DeepCollectionEquality().equals(other.isSeen, isSeen) &&
            const DeepCollectionEquality()
                .equals(other.notificationType, notificationType) &&
            const DeepCollectionEquality()
                .equals(other.groupLinked, groupLinked) &&
            const DeepCollectionEquality()
                .equals(other.userRecipient, userRecipient) &&
            const DeepCollectionEquality()
                .equals(other.userLinked, userLinked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(dateHour),
      const DeepCollectionEquality().hash(isSeen),
      const DeepCollectionEquality().hash(notificationType),
      const DeepCollectionEquality().hash(groupLinked),
      const DeepCollectionEquality().hash(userRecipient),
      const DeepCollectionEquality().hash(userLinked));

  @JsonKey(ignore: true)
  @override
  _$ApiNotificationModelCopyWith<_ApiNotificationModel> get copyWith =>
      __$ApiNotificationModelCopyWithImpl<_ApiNotificationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiNotificationModelToJson(this);
  }
}

abstract class _ApiNotificationModel implements ApiNotificationModel {
  const factory _ApiNotificationModel(
          {required String id,
          @JsonKey(name: 'date_hour') required DateTime dateHour,
          @JsonKey(name: 'is_seen') required bool isSeen,
          @JsonKey(name: 'notification_type') required String notificationType,
          @JsonKey(name: 'group_linked') ApiGroupModel? groupLinked,
          @JsonKey(name: 'user_recipient') required ApiUserModel userRecipient,
          @JsonKey(name: 'user_linked') ApiUserModel? userLinked}) =
      _$_ApiNotificationModel;

  factory _ApiNotificationModel.fromJson(Map<String, dynamic> json) =
      _$_ApiNotificationModel.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'date_hour')
  DateTime get dateHour;
  @override
  @JsonKey(name: 'is_seen')
  bool get isSeen;
  @override
  @JsonKey(name: 'notification_type')
  String get notificationType;
  @override
  @JsonKey(name: 'group_linked')
  ApiGroupModel? get groupLinked;
  @override //@JsonKey(name: 'content_linked') ApiContentModel? contentLinked,
  @JsonKey(name: 'user_recipient')
  ApiUserModel get userRecipient;
  @override
  @JsonKey(name: 'user_linked')
  ApiUserModel? get userLinked;
  @override
  @JsonKey(ignore: true)
  _$ApiNotificationModelCopyWith<_ApiNotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
