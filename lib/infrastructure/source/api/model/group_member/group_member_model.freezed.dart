// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiGroupMemberModel _$ApiGroupMemberModelFromJson(Map<String, dynamic> json) {
  return _ApiGroupMemberModel.fromJson(json);
}

/// @nodoc
class _$ApiGroupMemberModelTearOff {
  const _$ApiGroupMemberModelTearOff();

  _ApiGroupMemberModel call(
      {@JsonKey(name: 'group_member_id') required String groupMemberId,
      @JsonKey(name: 'membership_status') required String membershipStatus,
      @JsonKey(name: 'user_role') required String userRole,
      required ApiUserModel member,
      required ApiGroupModel group}) {
    return _ApiGroupMemberModel(
      groupMemberId: groupMemberId,
      membershipStatus: membershipStatus,
      userRole: userRole,
      member: member,
      group: group,
    );
  }

  ApiGroupMemberModel fromJson(Map<String, Object?> json) {
    return ApiGroupMemberModel.fromJson(json);
  }
}

/// @nodoc
const $ApiGroupMemberModel = _$ApiGroupMemberModelTearOff();

/// @nodoc
mixin _$ApiGroupMemberModel {
  @JsonKey(name: 'group_member_id')
  String get groupMemberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_status')
  String get membershipStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_role')
  String get userRole => throw _privateConstructorUsedError;
  ApiUserModel get member => throw _privateConstructorUsedError;
  ApiGroupModel get group => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiGroupMemberModelCopyWith<ApiGroupMemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiGroupMemberModelCopyWith<$Res> {
  factory $ApiGroupMemberModelCopyWith(
          ApiGroupMemberModel value, $Res Function(ApiGroupMemberModel) then) =
      _$ApiGroupMemberModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'group_member_id') String groupMemberId,
      @JsonKey(name: 'membership_status') String membershipStatus,
      @JsonKey(name: 'user_role') String userRole,
      ApiUserModel member,
      ApiGroupModel group});

  $ApiUserModelCopyWith<$Res> get member;
  $ApiGroupModelCopyWith<$Res> get group;
}

/// @nodoc
class _$ApiGroupMemberModelCopyWithImpl<$Res>
    implements $ApiGroupMemberModelCopyWith<$Res> {
  _$ApiGroupMemberModelCopyWithImpl(this._value, this._then);

  final ApiGroupMemberModel _value;
  // ignore: unused_field
  final $Res Function(ApiGroupMemberModel) _then;

  @override
  $Res call({
    Object? groupMemberId = freezed,
    Object? membershipStatus = freezed,
    Object? userRole = freezed,
    Object? member = freezed,
    Object? group = freezed,
  }) {
    return _then(_value.copyWith(
      groupMemberId: groupMemberId == freezed
          ? _value.groupMemberId
          : groupMemberId // ignore: cast_nullable_to_non_nullable
              as String,
      membershipStatus: membershipStatus == freezed
          ? _value.membershipStatus
          : membershipStatus // ignore: cast_nullable_to_non_nullable
              as String,
      userRole: userRole == freezed
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String,
      member: member == freezed
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as ApiUserModel,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as ApiGroupModel,
    ));
  }

  @override
  $ApiUserModelCopyWith<$Res> get member {
    return $ApiUserModelCopyWith<$Res>(_value.member, (value) {
      return _then(_value.copyWith(member: value));
    });
  }

  @override
  $ApiGroupModelCopyWith<$Res> get group {
    return $ApiGroupModelCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc
abstract class _$ApiGroupMemberModelCopyWith<$Res>
    implements $ApiGroupMemberModelCopyWith<$Res> {
  factory _$ApiGroupMemberModelCopyWith(_ApiGroupMemberModel value,
          $Res Function(_ApiGroupMemberModel) then) =
      __$ApiGroupMemberModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'group_member_id') String groupMemberId,
      @JsonKey(name: 'membership_status') String membershipStatus,
      @JsonKey(name: 'user_role') String userRole,
      ApiUserModel member,
      ApiGroupModel group});

  @override
  $ApiUserModelCopyWith<$Res> get member;
  @override
  $ApiGroupModelCopyWith<$Res> get group;
}

/// @nodoc
class __$ApiGroupMemberModelCopyWithImpl<$Res>
    extends _$ApiGroupMemberModelCopyWithImpl<$Res>
    implements _$ApiGroupMemberModelCopyWith<$Res> {
  __$ApiGroupMemberModelCopyWithImpl(
      _ApiGroupMemberModel _value, $Res Function(_ApiGroupMemberModel) _then)
      : super(_value, (v) => _then(v as _ApiGroupMemberModel));

  @override
  _ApiGroupMemberModel get _value => super._value as _ApiGroupMemberModel;

  @override
  $Res call({
    Object? groupMemberId = freezed,
    Object? membershipStatus = freezed,
    Object? userRole = freezed,
    Object? member = freezed,
    Object? group = freezed,
  }) {
    return _then(_ApiGroupMemberModel(
      groupMemberId: groupMemberId == freezed
          ? _value.groupMemberId
          : groupMemberId // ignore: cast_nullable_to_non_nullable
              as String,
      membershipStatus: membershipStatus == freezed
          ? _value.membershipStatus
          : membershipStatus // ignore: cast_nullable_to_non_nullable
              as String,
      userRole: userRole == freezed
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String,
      member: member == freezed
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as ApiUserModel,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as ApiGroupModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiGroupMemberModel implements _ApiGroupMemberModel {
  const _$_ApiGroupMemberModel(
      {@JsonKey(name: 'group_member_id') required this.groupMemberId,
      @JsonKey(name: 'membership_status') required this.membershipStatus,
      @JsonKey(name: 'user_role') required this.userRole,
      required this.member,
      required this.group});

  factory _$_ApiGroupMemberModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApiGroupMemberModelFromJson(json);

  @override
  @JsonKey(name: 'group_member_id')
  final String groupMemberId;
  @override
  @JsonKey(name: 'membership_status')
  final String membershipStatus;
  @override
  @JsonKey(name: 'user_role')
  final String userRole;
  @override
  final ApiUserModel member;
  @override
  final ApiGroupModel group;

  @override
  String toString() {
    return 'ApiGroupMemberModel(groupMemberId: $groupMemberId, membershipStatus: $membershipStatus, userRole: $userRole, member: $member, group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiGroupMemberModel &&
            const DeepCollectionEquality()
                .equals(other.groupMemberId, groupMemberId) &&
            const DeepCollectionEquality()
                .equals(other.membershipStatus, membershipStatus) &&
            const DeepCollectionEquality().equals(other.userRole, userRole) &&
            const DeepCollectionEquality().equals(other.member, member) &&
            const DeepCollectionEquality().equals(other.group, group));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(groupMemberId),
      const DeepCollectionEquality().hash(membershipStatus),
      const DeepCollectionEquality().hash(userRole),
      const DeepCollectionEquality().hash(member),
      const DeepCollectionEquality().hash(group));

  @JsonKey(ignore: true)
  @override
  _$ApiGroupMemberModelCopyWith<_ApiGroupMemberModel> get copyWith =>
      __$ApiGroupMemberModelCopyWithImpl<_ApiGroupMemberModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiGroupMemberModelToJson(this);
  }
}

abstract class _ApiGroupMemberModel implements ApiGroupMemberModel {
  const factory _ApiGroupMemberModel(
      {@JsonKey(name: 'group_member_id') required String groupMemberId,
      @JsonKey(name: 'membership_status') required String membershipStatus,
      @JsonKey(name: 'user_role') required String userRole,
      required ApiUserModel member,
      required ApiGroupModel group}) = _$_ApiGroupMemberModel;

  factory _ApiGroupMemberModel.fromJson(Map<String, dynamic> json) =
      _$_ApiGroupMemberModel.fromJson;

  @override
  @JsonKey(name: 'group_member_id')
  String get groupMemberId;
  @override
  @JsonKey(name: 'membership_status')
  String get membershipStatus;
  @override
  @JsonKey(name: 'user_role')
  String get userRole;
  @override
  ApiUserModel get member;
  @override
  ApiGroupModel get group;
  @override
  @JsonKey(ignore: true)
  _$ApiGroupMemberModelCopyWith<_ApiGroupMemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}
