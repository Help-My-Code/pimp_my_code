// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

  _Submit submit() {
    return const _Submit();
  }

  _UpdateEmail updateEmail(String email) {
    return _UpdateEmail(
      email,
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

  _UpdateFirstName updateFirstName(String firstName) {
    return _UpdateFirstName(
      firstName,
    );
  }

  _UpdateLastName updateLastName(String lastName) {
    return _UpdateLastName(
      lastName,
    );
  }

  _UpdateDescription updateDescription(String description) {
    return _UpdateDescription(
      description,
    );
  }
}

/// @nodoc
const $RegisterEvent = _$RegisterEventTearOff();

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submit,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String confirmPassword) updateConfirmPassword,
    required TResult Function(String firstName) updateFirstName,
    required TResult Function(String lastName) updateLastName,
    required TResult Function(String description) updateDescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(String firstName)? updateFirstName,
    TResult Function(String lastName)? updateLastName,
    TResult Function(String description)? updateDescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(String firstName)? updateFirstName,
    TResult Function(String lastName)? updateLastName,
    TResult Function(String description)? updateDescription,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_UpdateFirstName value) updateFirstName,
    required TResult Function(_UpdateLastName value) updateLastName,
    required TResult Function(_UpdateDescription value) updateDescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateFirstName value)? updateFirstName,
    TResult Function(_UpdateLastName value)? updateLastName,
    TResult Function(_UpdateDescription value)? updateDescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateFirstName value)? updateFirstName,
    TResult Function(_UpdateLastName value)? updateLastName,
    TResult Function(_UpdateDescription value)? updateDescription,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
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
    return 'RegisterEvent.submit()';
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
    required TResult Function() submit,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String confirmPassword) updateConfirmPassword,
    required TResult Function(String firstName) updateFirstName,
    required TResult Function(String lastName) updateLastName,
    required TResult Function(String description) updateDescription,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(String firstName)? updateFirstName,
    TResult Function(String lastName)? updateLastName,
    TResult Function(String description)? updateDescription,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(String firstName)? updateFirstName,
    TResult Function(String lastName)? updateLastName,
    TResult Function(String description)? updateDescription,
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
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_UpdateFirstName value) updateFirstName,
    required TResult Function(_UpdateLastName value) updateLastName,
    required TResult Function(_UpdateDescription value) updateDescription,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateFirstName value)? updateFirstName,
    TResult Function(_UpdateLastName value)? updateLastName,
    TResult Function(_UpdateDescription value)? updateDescription,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateFirstName value)? updateFirstName,
    TResult Function(_UpdateLastName value)? updateLastName,
    TResult Function(_UpdateDescription value)? updateDescription,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements RegisterEvent {
  const factory _Submit() = _$_Submit;
}

/// @nodoc
abstract class _$UpdateEmailCopyWith<$Res> {
  factory _$UpdateEmailCopyWith(
          _UpdateEmail value, $Res Function(_UpdateEmail) then) =
      __$UpdateEmailCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$UpdateEmailCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements _$UpdateEmailCopyWith<$Res> {
  __$UpdateEmailCopyWithImpl(
      _UpdateEmail _value, $Res Function(_UpdateEmail) _then)
      : super(_value, (v) => _then(v as _UpdateEmail));

  @override
  _UpdateEmail get _value => super._value as _UpdateEmail;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_UpdateEmail(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateEmail implements _UpdateEmail {
  const _$_UpdateEmail(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.updateEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateEmail &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$UpdateEmailCopyWith<_UpdateEmail> get copyWith =>
      __$UpdateEmailCopyWithImpl<_UpdateEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submit,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String confirmPassword) updateConfirmPassword,
    required TResult Function(String firstName) updateFirstName,
    required TResult Function(String lastName) updateLastName,
    required TResult Function(String description) updateDescription,
  }) {
    return updateEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(String firstName)? updateFirstName,
    TResult Function(String lastName)? updateLastName,
    TResult Function(String description)? updateDescription,
  }) {
    return updateEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(String firstName)? updateFirstName,
    TResult Function(String lastName)? updateLastName,
    TResult Function(String description)? updateDescription,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_UpdateFirstName value) updateFirstName,
    required TResult Function(_UpdateLastName value) updateLastName,
    required TResult Function(_UpdateDescription value) updateDescription,
  }) {
    return updateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateFirstName value)? updateFirstName,
    TResult Function(_UpdateLastName value)? updateLastName,
    TResult Function(_UpdateDescription value)? updateDescription,
  }) {
    return updateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateFirstName value)? updateFirstName,
    TResult Function(_UpdateLastName value)? updateLastName,
    TResult Function(_UpdateDescription value)? updateDescription,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(this);
    }
    return orElse();
  }
}

abstract class _UpdateEmail implements RegisterEvent {
  const factory _UpdateEmail(String email) = _$_UpdateEmail;

  String get email;
  @JsonKey(ignore: true)
  _$UpdateEmailCopyWith<_UpdateEmail> get copyWith =>
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
    extends _$RegisterEventCopyWithImpl<$Res>
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
    return 'RegisterEvent.updatePassword(password: $password)';
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
    required TResult Function() submit,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String confirmPassword) updateConfirmPassword,
    required TResult Function(String firstName) updateFirstName,
    required TResult Function(String lastName) updateLastName,
    required TResult Function(String description) updateDescription,
  }) {
    return updatePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(String firstName)? updateFirstName,
    TResult Function(String lastName)? updateLastName,
    TResult Function(String description)? updateDescription,
  }) {
    return updatePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(String firstName)? updateFirstName,
    TResult Function(String lastName)? updateLastName,
    TResult Function(String description)? updateDescription,
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
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_UpdateFirstName value) updateFirstName,
    required TResult Function(_UpdateLastName value) updateLastName,
    required TResult Function(_UpdateDescription value) updateDescription,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateFirstName value)? updateFirstName,
    TResult Function(_UpdateLastName value)? updateLastName,
    TResult Function(_UpdateDescription value)? updateDescription,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateFirstName value)? updateFirstName,
    TResult Function(_UpdateLastName value)? updateLastName,
    TResult Function(_UpdateDescription value)? updateDescription,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassword implements RegisterEvent {
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
    extends _$RegisterEventCopyWithImpl<$Res>
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
    return 'RegisterEvent.updateConfirmPassword(confirmPassword: $confirmPassword)';
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
    required TResult Function() submit,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String confirmPassword) updateConfirmPassword,
    required TResult Function(String firstName) updateFirstName,
    required TResult Function(String lastName) updateLastName,
    required TResult Function(String description) updateDescription,
  }) {
    return updateConfirmPassword(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(String firstName)? updateFirstName,
    TResult Function(String lastName)? updateLastName,
    TResult Function(String description)? updateDescription,
  }) {
    return updateConfirmPassword?.call(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(String firstName)? updateFirstName,
    TResult Function(String lastName)? updateLastName,
    TResult Function(String description)? updateDescription,
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
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_UpdateFirstName value) updateFirstName,
    required TResult Function(_UpdateLastName value) updateLastName,
    required TResult Function(_UpdateDescription value) updateDescription,
  }) {
    return updateConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateFirstName value)? updateFirstName,
    TResult Function(_UpdateLastName value)? updateLastName,
    TResult Function(_UpdateDescription value)? updateDescription,
  }) {
    return updateConfirmPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateFirstName value)? updateFirstName,
    TResult Function(_UpdateLastName value)? updateLastName,
    TResult Function(_UpdateDescription value)? updateDescription,
    required TResult orElse(),
  }) {
    if (updateConfirmPassword != null) {
      return updateConfirmPassword(this);
    }
    return orElse();
  }
}

abstract class _UpdateConfirmPassword implements RegisterEvent {
  const factory _UpdateConfirmPassword(String confirmPassword) =
      _$_UpdateConfirmPassword;

  String get confirmPassword;
  @JsonKey(ignore: true)
  _$UpdateConfirmPasswordCopyWith<_UpdateConfirmPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateFirstNameCopyWith<$Res> {
  factory _$UpdateFirstNameCopyWith(
          _UpdateFirstName value, $Res Function(_UpdateFirstName) then) =
      __$UpdateFirstNameCopyWithImpl<$Res>;
  $Res call({String firstName});
}

/// @nodoc
class __$UpdateFirstNameCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$UpdateFirstNameCopyWith<$Res> {
  __$UpdateFirstNameCopyWithImpl(
      _UpdateFirstName _value, $Res Function(_UpdateFirstName) _then)
      : super(_value, (v) => _then(v as _UpdateFirstName));

  @override
  _UpdateFirstName get _value => super._value as _UpdateFirstName;

  @override
  $Res call({
    Object? firstName = freezed,
  }) {
    return _then(_UpdateFirstName(
      firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateFirstName implements _UpdateFirstName {
  const _$_UpdateFirstName(this.firstName);

  @override
  final String firstName;

  @override
  String toString() {
    return 'RegisterEvent.updateFirstName(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateFirstName &&
            const DeepCollectionEquality().equals(other.firstName, firstName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(firstName));

  @JsonKey(ignore: true)
  @override
  _$UpdateFirstNameCopyWith<_UpdateFirstName> get copyWith =>
      __$UpdateFirstNameCopyWithImpl<_UpdateFirstName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submit,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String confirmPassword) updateConfirmPassword,
    required TResult Function(String firstName) updateFirstName,
    required TResult Function(String lastName) updateLastName,
    required TResult Function(String description) updateDescription,
  }) {
    return updateFirstName(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(String firstName)? updateFirstName,
    TResult Function(String lastName)? updateLastName,
    TResult Function(String description)? updateDescription,
  }) {
    return updateFirstName?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(String firstName)? updateFirstName,
    TResult Function(String lastName)? updateLastName,
    TResult Function(String description)? updateDescription,
    required TResult orElse(),
  }) {
    if (updateFirstName != null) {
      return updateFirstName(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_UpdateFirstName value) updateFirstName,
    required TResult Function(_UpdateLastName value) updateLastName,
    required TResult Function(_UpdateDescription value) updateDescription,
  }) {
    return updateFirstName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateFirstName value)? updateFirstName,
    TResult Function(_UpdateLastName value)? updateLastName,
    TResult Function(_UpdateDescription value)? updateDescription,
  }) {
    return updateFirstName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateFirstName value)? updateFirstName,
    TResult Function(_UpdateLastName value)? updateLastName,
    TResult Function(_UpdateDescription value)? updateDescription,
    required TResult orElse(),
  }) {
    if (updateFirstName != null) {
      return updateFirstName(this);
    }
    return orElse();
  }
}

abstract class _UpdateFirstName implements RegisterEvent {
  const factory _UpdateFirstName(String firstName) = _$_UpdateFirstName;

  String get firstName;
  @JsonKey(ignore: true)
  _$UpdateFirstNameCopyWith<_UpdateFirstName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateLastNameCopyWith<$Res> {
  factory _$UpdateLastNameCopyWith(
          _UpdateLastName value, $Res Function(_UpdateLastName) then) =
      __$UpdateLastNameCopyWithImpl<$Res>;
  $Res call({String lastName});
}

/// @nodoc
class __$UpdateLastNameCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$UpdateLastNameCopyWith<$Res> {
  __$UpdateLastNameCopyWithImpl(
      _UpdateLastName _value, $Res Function(_UpdateLastName) _then)
      : super(_value, (v) => _then(v as _UpdateLastName));

  @override
  _UpdateLastName get _value => super._value as _UpdateLastName;

  @override
  $Res call({
    Object? lastName = freezed,
  }) {
    return _then(_UpdateLastName(
      lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateLastName implements _UpdateLastName {
  const _$_UpdateLastName(this.lastName);

  @override
  final String lastName;

  @override
  String toString() {
    return 'RegisterEvent.updateLastName(lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateLastName &&
            const DeepCollectionEquality().equals(other.lastName, lastName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(lastName));

  @JsonKey(ignore: true)
  @override
  _$UpdateLastNameCopyWith<_UpdateLastName> get copyWith =>
      __$UpdateLastNameCopyWithImpl<_UpdateLastName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submit,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String confirmPassword) updateConfirmPassword,
    required TResult Function(String firstName) updateFirstName,
    required TResult Function(String lastName) updateLastName,
    required TResult Function(String description) updateDescription,
  }) {
    return updateLastName(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(String firstName)? updateFirstName,
    TResult Function(String lastName)? updateLastName,
    TResult Function(String description)? updateDescription,
  }) {
    return updateLastName?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(String firstName)? updateFirstName,
    TResult Function(String lastName)? updateLastName,
    TResult Function(String description)? updateDescription,
    required TResult orElse(),
  }) {
    if (updateLastName != null) {
      return updateLastName(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_UpdateFirstName value) updateFirstName,
    required TResult Function(_UpdateLastName value) updateLastName,
    required TResult Function(_UpdateDescription value) updateDescription,
  }) {
    return updateLastName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateFirstName value)? updateFirstName,
    TResult Function(_UpdateLastName value)? updateLastName,
    TResult Function(_UpdateDescription value)? updateDescription,
  }) {
    return updateLastName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateFirstName value)? updateFirstName,
    TResult Function(_UpdateLastName value)? updateLastName,
    TResult Function(_UpdateDescription value)? updateDescription,
    required TResult orElse(),
  }) {
    if (updateLastName != null) {
      return updateLastName(this);
    }
    return orElse();
  }
}

abstract class _UpdateLastName implements RegisterEvent {
  const factory _UpdateLastName(String lastName) = _$_UpdateLastName;

  String get lastName;
  @JsonKey(ignore: true)
  _$UpdateLastNameCopyWith<_UpdateLastName> get copyWith =>
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
    extends _$RegisterEventCopyWithImpl<$Res>
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
    return 'RegisterEvent.updateDescription(description: $description)';
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
    required TResult Function() submit,
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String confirmPassword) updateConfirmPassword,
    required TResult Function(String firstName) updateFirstName,
    required TResult Function(String lastName) updateLastName,
    required TResult Function(String description) updateDescription,
  }) {
    return updateDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(String firstName)? updateFirstName,
    TResult Function(String lastName)? updateLastName,
    TResult Function(String description)? updateDescription,
  }) {
    return updateDescription?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submit,
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String confirmPassword)? updateConfirmPassword,
    TResult Function(String firstName)? updateFirstName,
    TResult Function(String lastName)? updateLastName,
    TResult Function(String description)? updateDescription,
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
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(_UpdateFirstName value) updateFirstName,
    required TResult Function(_UpdateLastName value) updateLastName,
    required TResult Function(_UpdateDescription value) updateDescription,
  }) {
    return updateDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateFirstName value)? updateFirstName,
    TResult Function(_UpdateLastName value)? updateLastName,
    TResult Function(_UpdateDescription value)? updateDescription,
  }) {
    return updateDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(_UpdateFirstName value)? updateFirstName,
    TResult Function(_UpdateLastName value)? updateLastName,
    TResult Function(_UpdateDescription value)? updateDescription,
    required TResult orElse(),
  }) {
    if (updateDescription != null) {
      return updateDescription(this);
    }
    return orElse();
  }
}

abstract class _UpdateDescription implements RegisterEvent {
  const factory _UpdateDescription(String description) = _$_UpdateDescription;

  String get description;
  @JsonKey(ignore: true)
  _$UpdateDescriptionCopyWith<_UpdateDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _State state(
      {String email = '',
      String password = '',
      String confirmPassword = '',
      String firstName = '',
      String lastName = '',
      String description = '',
      FormStatus status = const FormNotSent()}) {
    return _State(
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      firstName: firstName,
      lastName: lastName,
      description: description,
      status: status,
    );
  }
}

/// @nodoc
const $RegisterState = _$RegisterStateTearOff();

/// @nodoc
mixin _$RegisterState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  FormStatus get status => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email,
            String password,
            String confirmPassword,
            String firstName,
            String lastName,
            String description,
            FormStatus status)
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String email,
            String password,
            String confirmPassword,
            String firstName,
            String lastName,
            String description,
            FormStatus status)?
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email,
            String password,
            String confirmPassword,
            String firstName,
            String lastName,
            String description,
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
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String password,
      String confirmPassword,
      String firstName,
      String lastName,
      String description,
      FormStatus status});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? description = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ));
  }
}

/// @nodoc
abstract class _$StateCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) then) =
      __$StateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String password,
      String confirmPassword,
      String firstName,
      String lastName,
      String description,
      FormStatus status});
}

/// @nodoc
class __$StateCopyWithImpl<$Res> extends _$RegisterStateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(_State _value, $Res Function(_State) _then)
      : super(_value, (v) => _then(v as _State));

  @override
  _State get _value => super._value as _State;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? description = freezed,
    Object? status = freezed,
  }) {
    return _then(_State(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
      {this.email = '',
      this.password = '',
      this.confirmPassword = '',
      this.firstName = '',
      this.lastName = '',
      this.description = '',
      this.status = const FormNotSent()});

  @JsonKey()
  @override
  final String email;
  @JsonKey()
  @override
  final String password;
  @JsonKey()
  @override
  final String confirmPassword;
  @JsonKey()
  @override
  final String firstName;
  @JsonKey()
  @override
  final String lastName;
  @JsonKey()
  @override
  final String description;
  @JsonKey()
  @override
  final FormStatus status;

  @override
  String toString() {
    return 'RegisterState.state(email: $email, password: $password, confirmPassword: $confirmPassword, firstName: $firstName, lastName: $lastName, description: $description, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _State &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmPassword),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$StateCopyWith<_State> get copyWith =>
      __$StateCopyWithImpl<_State>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email,
            String password,
            String confirmPassword,
            String firstName,
            String lastName,
            String description,
            FormStatus status)
        state,
  }) {
    return state(email, password, confirmPassword, firstName, lastName,
        description, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String email,
            String password,
            String confirmPassword,
            String firstName,
            String lastName,
            String description,
            FormStatus status)?
        state,
  }) {
    return state?.call(email, password, confirmPassword, firstName, lastName,
        description, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email,
            String password,
            String confirmPassword,
            String firstName,
            String lastName,
            String description,
            FormStatus status)?
        state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(email, password, confirmPassword, firstName, lastName,
          description, status);
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

abstract class _State implements RegisterState {
  const factory _State(
      {String email,
      String password,
      String confirmPassword,
      String firstName,
      String lastName,
      String description,
      FormStatus status}) = _$_State;

  @override
  String get email;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get description;
  @override
  FormStatus get status;
  @override
  @JsonKey(ignore: true)
  _$StateCopyWith<_State> get copyWith => throw _privateConstructorUsedError;
}
