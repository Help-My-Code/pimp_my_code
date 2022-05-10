// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdateUserEventTearOff {
  const _$UpdateUserEventTearOff();

  _Init init(String? description, String? profilePictureURL,
      Confidentiality confidentiality) {
    return _Init(
      description,
      profilePictureURL,
      confidentiality,
    );
  }

  _Submit submit() {
    return const _Submit();
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

  _UpdatePassword updatePassword(String password) {
    return _UpdatePassword(
      password,
    );
  }

  _UpdateConfirmPassword updateConfirmPassword(String confirmPassword) {
    return _UpdateConfirmPassword(
      confirmPassword,
    );
  }

  _UpdateConfidentiality updateConfidentiality(
      Confidentiality confidentiality) {
    return _UpdateConfidentiality(
      confidentiality,
    );
  }
}

/// @nodoc
const $UpdateUserEvent = _$UpdateUserEventTearOff();

/// @nodoc
mixin _$UpdateUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)
        init,
    required TResult Function() submit,
    required TResult Function(String description) updateDescription,
    required TResult Function(String profilePictureURL) updateProfilePictureURL,
    required TResult Function(String password) updatePassword,
    required TResult Function(String confirmPassword) updateConfirmPassword,
    required TResult Function(Confidentiality confidentiality)
        updateConfidentiality,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)?
        init,
    TResult Function()? submit,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)?
        init,
    TResult Function()? submit,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfilePictureURL value)
        updateProfilePictureURL,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_UpdateConfidentiality value)
        updateConfidentiality,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserEventCopyWith<$Res> {
  factory $UpdateUserEventCopyWith(
          UpdateUserEvent value, $Res Function(UpdateUserEvent) then) =
      _$UpdateUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateUserEventCopyWithImpl<$Res>
    implements $UpdateUserEventCopyWith<$Res> {
  _$UpdateUserEventCopyWithImpl(this._value, this._then);

  final UpdateUserEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateUserEvent) _then;
}

/// @nodoc
abstract class _$InitCopyWith<$Res> {
  factory _$InitCopyWith(_Init value, $Res Function(_Init) then) =
      __$InitCopyWithImpl<$Res>;
  $Res call(
      {String? description,
      String? profilePictureURL,
      Confidentiality confidentiality});
}

/// @nodoc
class __$InitCopyWithImpl<$Res> extends _$UpdateUserEventCopyWithImpl<$Res>
    implements _$InitCopyWith<$Res> {
  __$InitCopyWithImpl(_Init _value, $Res Function(_Init) _then)
      : super(_value, (v) => _then(v as _Init));

  @override
  _Init get _value => super._value as _Init;

  @override
  $Res call({
    Object? description = freezed,
    Object? profilePictureURL = freezed,
    Object? confidentiality = freezed,
  }) {
    return _then(_Init(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureURL == freezed
          ? _value.profilePictureURL
          : profilePictureURL // ignore: cast_nullable_to_non_nullable
              as String?,
      confidentiality == freezed
          ? _value.confidentiality
          : confidentiality // ignore: cast_nullable_to_non_nullable
              as Confidentiality,
    ));
  }
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init(this.description, this.profilePictureURL, this.confidentiality);

  @override
  final String? description;
  @override
  final String? profilePictureURL;
  @override
  final Confidentiality confidentiality;

  @override
  String toString() {
    return 'UpdateUserEvent.init(description: $description, profilePictureURL: $profilePictureURL, confidentiality: $confidentiality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Init &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.profilePictureURL, profilePictureURL) &&
            const DeepCollectionEquality()
                .equals(other.confidentiality, confidentiality));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(profilePictureURL),
      const DeepCollectionEquality().hash(confidentiality));

  @JsonKey(ignore: true)
  @override
  _$InitCopyWith<_Init> get copyWith =>
      __$InitCopyWithImpl<_Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)
        init,
    required TResult Function() submit,
    required TResult Function(String description) updateDescription,
    required TResult Function(String profilePictureURL) updateProfilePictureURL,
    required TResult Function(String password) updatePassword,
    required TResult Function(String confirmPassword) updateConfirmPassword,
    required TResult Function(Confidentiality confidentiality)
        updateConfidentiality,
  }) {
    return init(description, profilePictureURL, confidentiality);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)?
        init,
    TResult Function()? submit,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
  }) {
    return init?.call(description, profilePictureURL, confidentiality);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)?
        init,
    TResult Function()? submit,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(description, profilePictureURL, confidentiality);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfilePictureURL value)
        updateProfilePictureURL,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_UpdateConfidentiality value)
        updateConfidentiality,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements UpdateUserEvent {
  const factory _Init(String? description, String? profilePictureURL,
      Confidentiality confidentiality) = _$_Init;

  String? get description;
  String? get profilePictureURL;
  Confidentiality get confidentiality;
  @JsonKey(ignore: true)
  _$InitCopyWith<_Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$UpdateUserEventCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
      : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit();

  @override
  String toString() {
    return 'UpdateUserEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)
        init,
    required TResult Function() submit,
    required TResult Function(String description) updateDescription,
    required TResult Function(String profilePictureURL) updateProfilePictureURL,
    required TResult Function(String password) updatePassword,
    required TResult Function(String confirmPassword) updateConfirmPassword,
    required TResult Function(Confidentiality confidentiality)
        updateConfidentiality,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)?
        init,
    TResult Function()? submit,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)?
        init,
    TResult Function()? submit,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfilePictureURL value)
        updateProfilePictureURL,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_UpdateConfidentiality value)
        updateConfidentiality,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements UpdateUserEvent {
  const factory _Submit() = _$_Submit;
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
    extends _$UpdateUserEventCopyWithImpl<$Res>
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
    return 'UpdateUserEvent.updateDescription(description: $description)';
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
    required TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)
        init,
    required TResult Function() submit,
    required TResult Function(String description) updateDescription,
    required TResult Function(String profilePictureURL) updateProfilePictureURL,
    required TResult Function(String password) updatePassword,
    required TResult Function(String confirmPassword) updateConfirmPassword,
    required TResult Function(Confidentiality confidentiality)
        updateConfidentiality,
  }) {
    return updateDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)?
        init,
    TResult Function()? submit,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
  }) {
    return updateDescription?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)?
        init,
    TResult Function()? submit,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
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
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfilePictureURL value)
        updateProfilePictureURL,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_UpdateConfidentiality value)
        updateConfidentiality,
  }) {
    return updateDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
  }) {
    return updateDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    required TResult orElse(),
  }) {
    if (updateDescription != null) {
      return updateDescription(this);
    }
    return orElse();
  }
}

abstract class _UpdateDescription implements UpdateUserEvent {
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
    extends _$UpdateUserEventCopyWithImpl<$Res>
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
    return 'UpdateUserEvent.updateProfilePictureURL(profilePictureURL: $profilePictureURL)';
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
    required TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)
        init,
    required TResult Function() submit,
    required TResult Function(String description) updateDescription,
    required TResult Function(String profilePictureURL) updateProfilePictureURL,
    required TResult Function(String password) updatePassword,
    required TResult Function(String confirmPassword) updateConfirmPassword,
    required TResult Function(Confidentiality confidentiality)
        updateConfidentiality,
  }) {
    return updateProfilePictureURL(profilePictureURL);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)?
        init,
    TResult Function()? submit,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
  }) {
    return updateProfilePictureURL?.call(profilePictureURL);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)?
        init,
    TResult Function()? submit,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
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
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfilePictureURL value)
        updateProfilePictureURL,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_UpdateConfidentiality value)
        updateConfidentiality,
  }) {
    return updateProfilePictureURL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
  }) {
    return updateProfilePictureURL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    required TResult orElse(),
  }) {
    if (updateProfilePictureURL != null) {
      return updateProfilePictureURL(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfilePictureURL implements UpdateUserEvent {
  const factory _UpdateProfilePictureURL(String profilePictureURL) =
      _$_UpdateProfilePictureURL;

  String get profilePictureURL;
  @JsonKey(ignore: true)
  _$UpdateProfilePictureURLCopyWith<_UpdateProfilePictureURL> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatePasswordCopyWith<$Res> {
  factory _$UpdatePasswordCopyWith(
          _UpdatePassword value, $Res Function(_UpdatePassword) then) =
      __$UpdatePasswordCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$UpdatePasswordCopyWithImpl<$Res>
    extends _$UpdateUserEventCopyWithImpl<$Res>
    implements _$UpdatePasswordCopyWith<$Res> {
  __$UpdatePasswordCopyWithImpl(
      _UpdatePassword _value, $Res Function(_UpdatePassword) _then)
      : super(_value, (v) => _then(v as _UpdatePassword));

  @override
  _UpdatePassword get _value => super._value as _UpdatePassword;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_UpdatePassword(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdatePassword implements _UpdatePassword {
  const _$_UpdatePassword(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'UpdateUserEvent.updatePassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePassword &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$UpdatePasswordCopyWith<_UpdatePassword> get copyWith =>
      __$UpdatePasswordCopyWithImpl<_UpdatePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)
        init,
    required TResult Function() submit,
    required TResult Function(String description) updateDescription,
    required TResult Function(String profilePictureURL) updateProfilePictureURL,
    required TResult Function(String password) updatePassword,
    required TResult Function(String confirmPassword) updateConfirmPassword,
    required TResult Function(Confidentiality confidentiality)
        updateConfidentiality,
  }) {
    return updatePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)?
        init,
    TResult Function()? submit,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
  }) {
    return updatePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)?
        init,
    TResult Function()? submit,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfilePictureURL value)
        updateProfilePictureURL,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_UpdateConfidentiality value)
        updateConfidentiality,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassword implements UpdateUserEvent {
  const factory _UpdatePassword(String password) = _$_UpdatePassword;

  String get password;
  @JsonKey(ignore: true)
  _$UpdatePasswordCopyWith<_UpdatePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateConfirmPasswordCopyWith<$Res> {
  factory _$UpdateConfirmPasswordCopyWith(_UpdateConfirmPassword value,
          $Res Function(_UpdateConfirmPassword) then) =
      __$UpdateConfirmPasswordCopyWithImpl<$Res>;
  $Res call({String confirmPassword});
}

/// @nodoc
class __$UpdateConfirmPasswordCopyWithImpl<$Res>
    extends _$UpdateUserEventCopyWithImpl<$Res>
    implements _$UpdateConfirmPasswordCopyWith<$Res> {
  __$UpdateConfirmPasswordCopyWithImpl(_UpdateConfirmPassword _value,
      $Res Function(_UpdateConfirmPassword) _then)
      : super(_value, (v) => _then(v as _UpdateConfirmPassword));

  @override
  _UpdateConfirmPassword get _value => super._value as _UpdateConfirmPassword;

  @override
  $Res call({
    Object? confirmPassword = freezed,
  }) {
    return _then(_UpdateConfirmPassword(
      confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateConfirmPassword implements _UpdateConfirmPassword {
  const _$_UpdateConfirmPassword(this.confirmPassword);

  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'UpdateUserEvent.updateConfirmPassword(confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateConfirmPassword &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(confirmPassword));

  @JsonKey(ignore: true)
  @override
  _$UpdateConfirmPasswordCopyWith<_UpdateConfirmPassword> get copyWith =>
      __$UpdateConfirmPasswordCopyWithImpl<_UpdateConfirmPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)
        init,
    required TResult Function() submit,
    required TResult Function(String description) updateDescription,
    required TResult Function(String profilePictureURL) updateProfilePictureURL,
    required TResult Function(String password) updatePassword,
    required TResult Function(String confirmPassword) updateConfirmPassword,
    required TResult Function(Confidentiality confidentiality)
        updateConfidentiality,
  }) {
    return updateConfirmPassword(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)?
        init,
    TResult Function()? submit,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
  }) {
    return updateConfirmPassword?.call(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)?
        init,
    TResult Function()? submit,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
    required TResult orElse(),
  }) {
    if (updateConfirmPassword != null) {
      return updateConfirmPassword(confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfilePictureURL value)
        updateProfilePictureURL,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_UpdateConfidentiality value)
        updateConfidentiality,
  }) {
    return updateConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
  }) {
    return updateConfirmPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    required TResult orElse(),
  }) {
    if (updateConfirmPassword != null) {
      return updateConfirmPassword(this);
    }
    return orElse();
  }
}

abstract class _UpdateConfirmPassword implements UpdateUserEvent {
  const factory _UpdateConfirmPassword(String confirmPassword) =
      _$_UpdateConfirmPassword;

  String get confirmPassword;
  @JsonKey(ignore: true)
  _$UpdateConfirmPasswordCopyWith<_UpdateConfirmPassword> get copyWith =>
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
    extends _$UpdateUserEventCopyWithImpl<$Res>
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
    return 'UpdateUserEvent.updateConfidentiality(confidentiality: $confidentiality)';
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
    required TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)
        init,
    required TResult Function() submit,
    required TResult Function(String description) updateDescription,
    required TResult Function(String profilePictureURL) updateProfilePictureURL,
    required TResult Function(String password) updatePassword,
    required TResult Function(String confirmPassword) updateConfirmPassword,
    required TResult Function(Confidentiality confidentiality)
        updateConfidentiality,
  }) {
    return updateConfidentiality(confidentiality);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)?
        init,
    TResult Function()? submit,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
  }) {
    return updateConfidentiality?.call(confidentiality);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description, String? profilePictureURL,
            Confidentiality confidentiality)?
        init,
    TResult Function()? submit,
    TResult Function(String description)? updateDescription,
    TResult Function(String profilePictureURL)? updateProfilePictureURL,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(Confidentiality confidentiality)? updateConfidentiality,
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
    required TResult Function(_Init value) init,
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateProfilePictureURL value)
        updateProfilePictureURL,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_UpdateConfidentiality value)
        updateConfidentiality,
  }) {
    return updateConfidentiality(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
  }) {
    return updateConfidentiality?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateProfilePictureURL value)? updateProfilePictureURL,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateConfidentiality value)? updateConfidentiality,
    required TResult orElse(),
  }) {
    if (updateConfidentiality != null) {
      return updateConfidentiality(this);
    }
    return orElse();
  }
}

abstract class _UpdateConfidentiality implements UpdateUserEvent {
  const factory _UpdateConfidentiality(Confidentiality confidentiality) =
      _$_UpdateConfidentiality;

  Confidentiality get confidentiality;
  @JsonKey(ignore: true)
  _$UpdateConfidentialityCopyWith<_UpdateConfidentiality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpdateUserStateTearOff {
  const _$UpdateUserStateTearOff();

  _State state(
      {String? description = '',
      String? profilePictureURL = '',
      String password = '',
      String confirmPassword = '',
      Confidentiality confidentiality = Confidentiality.public,
      FormStatus status = const FormNotSent()}) {
    return _State(
      description: description,
      profilePictureURL: profilePictureURL,
      password: password,
      confirmPassword: confirmPassword,
      confidentiality: confidentiality,
      status: status,
    );
  }
}

/// @nodoc
const $UpdateUserState = _$UpdateUserStateTearOff();

/// @nodoc
mixin _$UpdateUserState {
  String? get description => throw _privateConstructorUsedError;
  String? get profilePictureURL => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  Confidentiality get confidentiality => throw _privateConstructorUsedError;
  FormStatus get status => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? description,
            String? profilePictureURL,
            String password,
            String confirmPassword,
            Confidentiality confidentiality,
            FormStatus status)
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? description,
            String? profilePictureURL,
            String password,
            String confirmPassword,
            Confidentiality confidentiality,
            FormStatus status)?
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? description,
            String? profilePictureURL,
            String password,
            String confirmPassword,
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
  $UpdateUserStateCopyWith<UpdateUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserStateCopyWith<$Res> {
  factory $UpdateUserStateCopyWith(
          UpdateUserState value, $Res Function(UpdateUserState) then) =
      _$UpdateUserStateCopyWithImpl<$Res>;
  $Res call(
      {String? description,
      String? profilePictureURL,
      String password,
      String confirmPassword,
      Confidentiality confidentiality,
      FormStatus status});
}

/// @nodoc
class _$UpdateUserStateCopyWithImpl<$Res>
    implements $UpdateUserStateCopyWith<$Res> {
  _$UpdateUserStateCopyWithImpl(this._value, this._then);

  final UpdateUserState _value;
  // ignore: unused_field
  final $Res Function(UpdateUserState) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? profilePictureURL = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? confidentiality = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureURL: profilePictureURL == freezed
          ? _value.profilePictureURL
          : profilePictureURL // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$StateCopyWith<$Res> implements $UpdateUserStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) then) =
      __$StateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? description,
      String? profilePictureURL,
      String password,
      String confirmPassword,
      Confidentiality confidentiality,
      FormStatus status});
}

/// @nodoc
class __$StateCopyWithImpl<$Res> extends _$UpdateUserStateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(_State _value, $Res Function(_State) _then)
      : super(_value, (v) => _then(v as _State));

  @override
  _State get _value => super._value as _State;

  @override
  $Res call({
    Object? description = freezed,
    Object? profilePictureURL = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? confidentiality = freezed,
    Object? status = freezed,
  }) {
    return _then(_State(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureURL: profilePictureURL == freezed
          ? _value.profilePictureURL
          : profilePictureURL // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
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
      {this.description = '',
      this.profilePictureURL = '',
      this.password = '',
      this.confirmPassword = '',
      this.confidentiality = Confidentiality.public,
      this.status = const FormNotSent()});

  @JsonKey()
  @override
  final String? description;
  @JsonKey()
  @override
  final String? profilePictureURL;
  @JsonKey()
  @override
  final String password;
  @JsonKey()
  @override
  final String confirmPassword;
  @JsonKey()
  @override
  final Confidentiality confidentiality;
  @JsonKey()
  @override
  final FormStatus status;

  @override
  String toString() {
    return 'UpdateUserState.state(description: $description, profilePictureURL: $profilePictureURL, password: $password, confirmPassword: $confirmPassword, confidentiality: $confidentiality, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _State &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.profilePictureURL, profilePictureURL) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword) &&
            const DeepCollectionEquality()
                .equals(other.confidentiality, confidentiality) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(profilePictureURL),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmPassword),
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
            String? description,
            String? profilePictureURL,
            String password,
            String confirmPassword,
            Confidentiality confidentiality,
            FormStatus status)
        state,
  }) {
    return state(description, profilePictureURL, password, confirmPassword,
        confidentiality, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? description,
            String? profilePictureURL,
            String password,
            String confirmPassword,
            Confidentiality confidentiality,
            FormStatus status)?
        state,
  }) {
    return state?.call(description, profilePictureURL, password,
        confirmPassword, confidentiality, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? description,
            String? profilePictureURL,
            String password,
            String confirmPassword,
            Confidentiality confidentiality,
            FormStatus status)?
        state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(description, profilePictureURL, password, confirmPassword,
          confidentiality, status);
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

abstract class _State implements UpdateUserState {
  const factory _State(
      {String? description,
      String? profilePictureURL,
      String password,
      String confirmPassword,
      Confidentiality confidentiality,
      FormStatus status}) = _$_State;

  @override
  String? get description;
  @override
  String? get profilePictureURL;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  Confidentiality get confidentiality;
  @override
  FormStatus get status;
  @override
  @JsonKey(ignore: true)
  _$StateCopyWith<_State> get copyWith => throw _privateConstructorUsedError;
}
