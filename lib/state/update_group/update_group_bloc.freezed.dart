// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdateGroupEventTearOff {
  const _$UpdateGroupEventTearOff();

  _Submit submit(String groupId) {
    return _Submit(
      groupId,
    );
  }

  _UpdateName updateName(String name) {
    return _UpdateName(
      name,
    );
  }

  _UpdateDescription updateDescription(String description) {
    return _UpdateDescription(
      description,
    );
  }

  _UpdateProfilePictureURL updateProfilePictureURL(String profilePictureURL) {
    return _UpdateProfilePictureURL(
      profilePictureURL,
    );
  }

  _UpdateConfidentiality updateConfidentiality(
      Confidentiality confidentiality) {
    return _UpdateConfidentiality(
      confidentiality,
    );
  }

  _Loaded loaded(Group group) {
    return _Loaded(
      group,
    );
  }
}

/// @nodoc
const $UpdateGroupEvent = _$UpdateGroupEventTearOff();

/// @nodoc
mixin _$UpdateGroupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) submit,
    required TResult Function(String name) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(String profilePictureURL) updateProfilePictureURL,
    required TResult Function(Confidentiality confidentiality)
        updateConfidentiality,
    required TResult Function(Group group) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? submit,
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    TResult Function(Group group)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? submit,
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    TResult Function(Group group)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfilePictureURL value)
        updateProfilePictureURL,
    required TResult Function(_UpdateConfidentiality value)
        updateConfidentiality,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    TResult Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateGroupEventCopyWith<$Res> {
  factory $UpdateGroupEventCopyWith(
          UpdateGroupEvent value, $Res Function(UpdateGroupEvent) then) =
      _$UpdateGroupEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateGroupEventCopyWithImpl<$Res>
    implements $UpdateGroupEventCopyWith<$Res> {
  _$UpdateGroupEventCopyWithImpl(this._value, this._then);

  final UpdateGroupEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateGroupEvent) _then;
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
  $Res call({String groupId});
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$UpdateGroupEventCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
      : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;

  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_Submit(
      groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit(this.groupId);

  @override
  final String groupId;

  @override
  String toString() {
    return 'UpdateGroupEvent.submit(groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Submit &&
            const DeepCollectionEquality().equals(other.groupId, groupId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupId));

  @JsonKey(ignore: true)
  @override
  _$SubmitCopyWith<_Submit> get copyWith =>
      __$SubmitCopyWithImpl<_Submit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) submit,
    required TResult Function(String name) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(String profilePictureURL) updateProfilePictureURL,
    required TResult Function(Confidentiality confidentiality)
        updateConfidentiality,
    required TResult Function(Group group) loaded,
  }) {
    return submit(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? submit,
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    TResult Function(Group group)? loaded,
  }) {
    return submit?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? submit,
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    TResult Function(Group group)? loaded,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfilePictureURL value)
        updateProfilePictureURL,
    required TResult Function(_UpdateConfidentiality value)
        updateConfidentiality,
    required TResult Function(_Loaded value) loaded,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    TResult Function(_Loaded value)? loaded,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements UpdateGroupEvent {
  const factory _Submit(String groupId) = _$_Submit;

  String get groupId;
  @JsonKey(ignore: true)
  _$SubmitCopyWith<_Submit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateNameCopyWith<$Res> {
  factory _$UpdateNameCopyWith(
          _UpdateName value, $Res Function(_UpdateName) then) =
      __$UpdateNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$UpdateNameCopyWithImpl<$Res>
    extends _$UpdateGroupEventCopyWithImpl<$Res>
    implements _$UpdateNameCopyWith<$Res> {
  __$UpdateNameCopyWithImpl(
      _UpdateName _value, $Res Function(_UpdateName) _then)
      : super(_value, (v) => _then(v as _UpdateName));

  @override
  _UpdateName get _value => super._value as _UpdateName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_UpdateName(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateName implements _UpdateName {
  const _$_UpdateName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'UpdateGroupEvent.updateName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateName &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$UpdateNameCopyWith<_UpdateName> get copyWith =>
      __$UpdateNameCopyWithImpl<_UpdateName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) submit,
    required TResult Function(String name) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(String profilePictureURL) updateProfilePictureURL,
    required TResult Function(Confidentiality confidentiality)
        updateConfidentiality,
    required TResult Function(Group group) loaded,
  }) {
    return updateName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? submit,
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    TResult Function(Group group)? loaded,
  }) {
    return updateName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? submit,
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    TResult Function(Group group)? loaded,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfilePictureURL value)
        updateProfilePictureURL,
    required TResult Function(_UpdateConfidentiality value)
        updateConfidentiality,
    required TResult Function(_Loaded value) loaded,
  }) {
    return updateName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    TResult Function(_Loaded value)? loaded,
  }) {
    return updateName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(this);
    }
    return orElse();
  }
}

abstract class _UpdateName implements UpdateGroupEvent {
  const factory _UpdateName(String name) = _$_UpdateName;

  String get name;
  @JsonKey(ignore: true)
  _$UpdateNameCopyWith<_UpdateName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateDescriptionCopyWith<$Res> {
  factory _$UpdateDescriptionCopyWith(
          _UpdateDescription value, $Res Function(_UpdateDescription) then) =
      __$UpdateDescriptionCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$UpdateDescriptionCopyWithImpl<$Res>
    extends _$UpdateGroupEventCopyWithImpl<$Res>
    implements _$UpdateDescriptionCopyWith<$Res> {
  __$UpdateDescriptionCopyWithImpl(
      _UpdateDescription _value, $Res Function(_UpdateDescription) _then)
      : super(_value, (v) => _then(v as _UpdateDescription));

  @override
  _UpdateDescription get _value => super._value as _UpdateDescription;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_UpdateDescription(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateDescription implements _UpdateDescription {
  const _$_UpdateDescription(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'UpdateGroupEvent.updateDescription(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateDescription &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$UpdateDescriptionCopyWith<_UpdateDescription> get copyWith =>
      __$UpdateDescriptionCopyWithImpl<_UpdateDescription>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) submit,
    required TResult Function(String name) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(String profilePictureURL) updateProfilePictureURL,
    required TResult Function(Confidentiality confidentiality)
        updateConfidentiality,
    required TResult Function(Group group) loaded,
  }) {
    return updateDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? submit,
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    TResult Function(Group group)? loaded,
  }) {
    return updateDescription?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? submit,
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    TResult Function(Group group)? loaded,
    required TResult orElse(),
  }) {
    if (updateDescription != null) {
      return updateDescription(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfilePictureURL value)
        updateProfilePictureURL,
    required TResult Function(_UpdateConfidentiality value)
        updateConfidentiality,
    required TResult Function(_Loaded value) loaded,
  }) {
    return updateDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    TResult Function(_Loaded value)? loaded,
  }) {
    return updateDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (updateDescription != null) {
      return updateDescription(this);
    }
    return orElse();
  }
}

abstract class _UpdateDescription implements UpdateGroupEvent {
  const factory _UpdateDescription(String description) = _$_UpdateDescription;

  String get description;
  @JsonKey(ignore: true)
  _$UpdateDescriptionCopyWith<_UpdateDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateProfilePictureURLCopyWith<$Res> {
  factory _$UpdateProfilePictureURLCopyWith(_UpdateProfilePictureURL value,
          $Res Function(_UpdateProfilePictureURL) then) =
      __$UpdateProfilePictureURLCopyWithImpl<$Res>;
  $Res call({String profilePictureURL});
}

/// @nodoc
class __$UpdateProfilePictureURLCopyWithImpl<$Res>
    extends _$UpdateGroupEventCopyWithImpl<$Res>
    implements _$UpdateProfilePictureURLCopyWith<$Res> {
  __$UpdateProfilePictureURLCopyWithImpl(_UpdateProfilePictureURL _value,
      $Res Function(_UpdateProfilePictureURL) _then)
      : super(_value, (v) => _then(v as _UpdateProfilePictureURL));

  @override
  _UpdateProfilePictureURL get _value =>
      super._value as _UpdateProfilePictureURL;

  @override
  $Res call({
    Object? profilePictureURL = freezed,
  }) {
    return _then(_UpdateProfilePictureURL(
      profilePictureURL == freezed
          ? _value.profilePictureURL
          : profilePictureURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateProfilePictureURL implements _UpdateProfilePictureURL {
  const _$_UpdateProfilePictureURL(this.profilePictureURL);

  @override
  final String profilePictureURL;

  @override
  String toString() {
    return 'UpdateGroupEvent.updateProfilePictureURL(profilePictureURL: $profilePictureURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateProfilePictureURL &&
            const DeepCollectionEquality()
                .equals(other.profilePictureURL, profilePictureURL));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(profilePictureURL));

  @JsonKey(ignore: true)
  @override
  _$UpdateProfilePictureURLCopyWith<_UpdateProfilePictureURL> get copyWith =>
      __$UpdateProfilePictureURLCopyWithImpl<_UpdateProfilePictureURL>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) submit,
    required TResult Function(String name) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(String profilePictureURL) updateProfilePictureURL,
    required TResult Function(Confidentiality confidentiality)
        updateConfidentiality,
    required TResult Function(Group group) loaded,
  }) {
    return updateProfilePictureURL(profilePictureURL);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? submit,
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    TResult Function(Group group)? loaded,
  }) {
    return updateProfilePictureURL?.call(profilePictureURL);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? submit,
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    TResult Function(Group group)? loaded,
    required TResult orElse(),
  }) {
    if (updateProfilePictureURL != null) {
      return updateProfilePictureURL(profilePictureURL);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfilePictureURL value)
        updateProfilePictureURL,
    required TResult Function(_UpdateConfidentiality value)
        updateConfidentiality,
    required TResult Function(_Loaded value) loaded,
  }) {
    return updateProfilePictureURL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    TResult Function(_Loaded value)? loaded,
  }) {
    return updateProfilePictureURL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (updateProfilePictureURL != null) {
      return updateProfilePictureURL(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfilePictureURL implements UpdateGroupEvent {
  const factory _UpdateProfilePictureURL(String profilePictureURL) =
      _$_UpdateProfilePictureURL;

  String get profilePictureURL;
  @JsonKey(ignore: true)
  _$UpdateProfilePictureURLCopyWith<_UpdateProfilePictureURL> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateConfidentialityCopyWith<$Res> {
  factory _$UpdateConfidentialityCopyWith(_UpdateConfidentiality value,
          $Res Function(_UpdateConfidentiality) then) =
      __$UpdateConfidentialityCopyWithImpl<$Res>;
  $Res call({Confidentiality confidentiality});
}

/// @nodoc
class __$UpdateConfidentialityCopyWithImpl<$Res>
    extends _$UpdateGroupEventCopyWithImpl<$Res>
    implements _$UpdateConfidentialityCopyWith<$Res> {
  __$UpdateConfidentialityCopyWithImpl(_UpdateConfidentiality _value,
      $Res Function(_UpdateConfidentiality) _then)
      : super(_value, (v) => _then(v as _UpdateConfidentiality));

  @override
  _UpdateConfidentiality get _value => super._value as _UpdateConfidentiality;

  @override
  $Res call({
    Object? confidentiality = freezed,
  }) {
    return _then(_UpdateConfidentiality(
      confidentiality == freezed
          ? _value.confidentiality
          : confidentiality // ignore: cast_nullable_to_non_nullable
              as Confidentiality,
    ));
  }
}

/// @nodoc

class _$_UpdateConfidentiality implements _UpdateConfidentiality {
  const _$_UpdateConfidentiality(this.confidentiality);

  @override
  final Confidentiality confidentiality;

  @override
  String toString() {
    return 'UpdateGroupEvent.updateConfidentiality(confidentiality: $confidentiality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateConfidentiality &&
            const DeepCollectionEquality()
                .equals(other.confidentiality, confidentiality));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(confidentiality));

  @JsonKey(ignore: true)
  @override
  _$UpdateConfidentialityCopyWith<_UpdateConfidentiality> get copyWith =>
      __$UpdateConfidentialityCopyWithImpl<_UpdateConfidentiality>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) submit,
    required TResult Function(String name) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(String profilePictureURL) updateProfilePictureURL,
    required TResult Function(Confidentiality confidentiality)
        updateConfidentiality,
    required TResult Function(Group group) loaded,
  }) {
    return updateConfidentiality(confidentiality);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? submit,
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    TResult Function(Group group)? loaded,
  }) {
    return updateConfidentiality?.call(confidentiality);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? submit,
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    TResult Function(Group group)? loaded,
    required TResult orElse(),
  }) {
    if (updateConfidentiality != null) {
      return updateConfidentiality(confidentiality);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfilePictureURL value)
        updateProfilePictureURL,
    required TResult Function(_UpdateConfidentiality value)
        updateConfidentiality,
    required TResult Function(_Loaded value) loaded,
  }) {
    return updateConfidentiality(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    TResult Function(_Loaded value)? loaded,
  }) {
    return updateConfidentiality?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (updateConfidentiality != null) {
      return updateConfidentiality(this);
    }
    return orElse();
  }
}

abstract class _UpdateConfidentiality implements UpdateGroupEvent {
  const factory _UpdateConfidentiality(Confidentiality confidentiality) =
      _$_UpdateConfidentiality;

  Confidentiality get confidentiality;
  @JsonKey(ignore: true)
  _$UpdateConfidentialityCopyWith<_UpdateConfidentiality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({Group group});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$UpdateGroupEventCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? group = freezed,
  }) {
    return _then(_Loaded(
      group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.group);

  @override
  final Group group;

  @override
  String toString() {
    return 'UpdateGroupEvent.loaded(group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.group, group));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(group));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) submit,
    required TResult Function(String name) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(String profilePictureURL) updateProfilePictureURL,
    required TResult Function(Confidentiality confidentiality)
        updateConfidentiality,
    required TResult Function(Group group) loaded,
  }) {
    return loaded(group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? submit,
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    TResult Function(Group group)? loaded,
  }) {
    return loaded?.call(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? submit,
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    TResult Function(Group group)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfilePictureURL value)
        updateProfilePictureURL,
    required TResult Function(_UpdateConfidentiality value)
        updateConfidentiality,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements UpdateGroupEvent {
  const factory _Loaded(Group group) = _$_Loaded;

  Group get group;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpdateGroupStateTearOff {
  const _$UpdateGroupStateTearOff();

  _State state(
      {String name = '',
      String? description = '',
      String? profilePictureURL = '',
      Confidentiality confidentiality = Confidentiality.public,
      FormStatus status = const FormNotSent()}) {
    return _State(
      name: name,
      description: description,
      profilePictureURL: profilePictureURL,
      confidentiality: confidentiality,
      status: status,
    );
  }
}

/// @nodoc
const $UpdateGroupState = _$UpdateGroupStateTearOff();

/// @nodoc
mixin _$UpdateGroupState {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get profilePictureURL => throw _privateConstructorUsedError;
  Confidentiality get confidentiality => throw _privateConstructorUsedError;
  FormStatus get status => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            String? description,
            String? profilePictureURL,
            Confidentiality confidentiality,
            FormStatus status)
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String name,
            String? description,
            String? profilePictureURL,
            Confidentiality confidentiality,
            FormStatus status)?
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name,
            String? description,
            String? profilePictureURL,
            Confidentiality confidentiality,
            FormStatus status)?
        state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_State value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateGroupStateCopyWith<UpdateGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateGroupStateCopyWith<$Res> {
  factory $UpdateGroupStateCopyWith(
          UpdateGroupState value, $Res Function(UpdateGroupState) then) =
      _$UpdateGroupStateCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String? description,
      String? profilePictureURL,
      Confidentiality confidentiality,
      FormStatus status});
}

/// @nodoc
class _$UpdateGroupStateCopyWithImpl<$Res>
    implements $UpdateGroupStateCopyWith<$Res> {
  _$UpdateGroupStateCopyWithImpl(this._value, this._then);

  final UpdateGroupState _value;
  // ignore: unused_field
  final $Res Function(UpdateGroupState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? profilePictureURL = freezed,
    Object? confidentiality = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureURL: profilePictureURL == freezed
          ? _value.profilePictureURL
          : profilePictureURL // ignore: cast_nullable_to_non_nullable
              as String?,
      confidentiality: confidentiality == freezed
          ? _value.confidentiality
          : confidentiality // ignore: cast_nullable_to_non_nullable
              as Confidentiality,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ));
  }
}

/// @nodoc
abstract class _$StateCopyWith<$Res>
    implements $UpdateGroupStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) then) =
      __$StateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String? description,
      String? profilePictureURL,
      Confidentiality confidentiality,
      FormStatus status});
}

/// @nodoc
class __$StateCopyWithImpl<$Res> extends _$UpdateGroupStateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(_State _value, $Res Function(_State) _then)
      : super(_value, (v) => _then(v as _State));

  @override
  _State get _value => super._value as _State;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? profilePictureURL = freezed,
    Object? confidentiality = freezed,
    Object? status = freezed,
  }) {
    return _then(_State(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureURL: profilePictureURL == freezed
          ? _value.profilePictureURL
          : profilePictureURL // ignore: cast_nullable_to_non_nullable
              as String?,
      confidentiality: confidentiality == freezed
          ? _value.confidentiality
          : confidentiality // ignore: cast_nullable_to_non_nullable
              as Confidentiality,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ));
  }
}

/// @nodoc

class _$_State implements _State {
  const _$_State(
      {this.name = '',
      this.description = '',
      this.profilePictureURL = '',
      this.confidentiality = Confidentiality.public,
      this.status = const FormNotSent()});

  @JsonKey()
  @override
  final String name;
  @JsonKey()
  @override
  final String? description;
  @JsonKey()
  @override
  final String? profilePictureURL;
  @JsonKey()
  @override
  final Confidentiality confidentiality;
  @JsonKey()
  @override
  final FormStatus status;

  @override
  String toString() {
    return 'UpdateGroupState.state(name: $name, description: $description, profilePictureURL: $profilePictureURL, confidentiality: $confidentiality, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _State &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.profilePictureURL, profilePictureURL) &&
            const DeepCollectionEquality()
                .equals(other.confidentiality, confidentiality) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(profilePictureURL),
      const DeepCollectionEquality().hash(confidentiality),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$StateCopyWith<_State> get copyWith =>
      __$StateCopyWithImpl<_State>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            String? description,
            String? profilePictureURL,
            Confidentiality confidentiality,
            FormStatus status)
        state,
  }) {
    return state(name, description, profilePictureURL, confidentiality, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String name,
            String? description,
            String? profilePictureURL,
            Confidentiality confidentiality,
            FormStatus status)?
        state,
  }) {
    return state?.call(
        name, description, profilePictureURL, confidentiality, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name,
            String? description,
            String? profilePictureURL,
            Confidentiality confidentiality,
            FormStatus status)?
        state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(
          name, description, profilePictureURL, confidentiality, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_State value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _State implements UpdateGroupState {
  const factory _State(
      {String name,
      String? description,
      String? profilePictureURL,
      Confidentiality confidentiality,
      FormStatus status}) = _$_State;

  @override
  String get name;
  @override
  String? get description;
  @override
  String? get profilePictureURL;
  @override
  Confidentiality get confidentiality;
  @override
  FormStatus get status;
  @override
  @JsonKey(ignore: true)
  _$StateCopyWith<_State> get copyWith => throw _privateConstructorUsedError;
}
