// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateGroupEventTearOff {
  const _$CreateGroupEventTearOff();

  _Submit submit(String creatorId) {
    return _Submit(
      creatorId,
    );
  }

  _UpdateName updateName(String name) {
    return _UpdateName(
      name,
    );
  }
}

/// @nodoc
const $CreateGroupEvent = _$CreateGroupEventTearOff();

/// @nodoc
mixin _$CreateGroupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String creatorId) submit,
    required TResult Function(String name) updateName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String creatorId)? submit,
    TResult Function(String name)? updateName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String creatorId)? submit,
    TResult Function(String name)? updateName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateName value) updateName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGroupEventCopyWith<$Res> {
  factory $CreateGroupEventCopyWith(
          CreateGroupEvent value, $Res Function(CreateGroupEvent) then) =
      _$CreateGroupEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateGroupEventCopyWithImpl<$Res>
    implements $CreateGroupEventCopyWith<$Res> {
  _$CreateGroupEventCopyWithImpl(this._value, this._then);

  final CreateGroupEvent _value;
  // ignore: unused_field
  final $Res Function(CreateGroupEvent) _then;
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
  $Res call({String creatorId});
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$CreateGroupEventCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
      : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;

  @override
  $Res call({
    Object? creatorId = freezed,
  }) {
    return _then(_Submit(
      creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit(this.creatorId);

  @override
  final String creatorId;

  @override
  String toString() {
    return 'CreateGroupEvent.submit(creatorId: $creatorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Submit &&
            const DeepCollectionEquality().equals(other.creatorId, creatorId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(creatorId));

  @JsonKey(ignore: true)
  @override
  _$SubmitCopyWith<_Submit> get copyWith =>
      __$SubmitCopyWithImpl<_Submit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String creatorId) submit,
    required TResult Function(String name) updateName,
  }) {
    return submit(creatorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String creatorId)? submit,
    TResult Function(String name)? updateName,
  }) {
    return submit?.call(creatorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String creatorId)? submit,
    TResult Function(String name)? updateName,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(creatorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateName value) updateName,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements CreateGroupEvent {
  const factory _Submit(String creatorId) = _$_Submit;

  String get creatorId;
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
    extends _$CreateGroupEventCopyWithImpl<$Res>
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
    return 'CreateGroupEvent.updateName(name: $name)';
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
    required TResult Function(String creatorId) submit,
    required TResult Function(String name) updateName,
  }) {
    return updateName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String creatorId)? submit,
    TResult Function(String name)? updateName,
  }) {
    return updateName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String creatorId)? submit,
    TResult Function(String name)? updateName,
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
  }) {
    return updateName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
  }) {
    return updateName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateName value)? updateName,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(this);
    }
    return orElse();
  }
}

abstract class _UpdateName implements CreateGroupEvent {
  const factory _UpdateName(String name) = _$_UpdateName;

  String get name;
  @JsonKey(ignore: true)
  _$UpdateNameCopyWith<_UpdateName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreateGroupStateTearOff {
  const _$CreateGroupStateTearOff();

  _State state({String name = '', FormStatus status = const FormNotSent()}) {
    return _State(
      name: name,
      status: status,
    );
  }
}

/// @nodoc
const $CreateGroupState = _$CreateGroupStateTearOff();

/// @nodoc
mixin _$CreateGroupState {
  String get name => throw _privateConstructorUsedError;
  FormStatus get status => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, FormStatus status) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, FormStatus status)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, FormStatus status)? state,
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
  $CreateGroupStateCopyWith<CreateGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGroupStateCopyWith<$Res> {
  factory $CreateGroupStateCopyWith(
          CreateGroupState value, $Res Function(CreateGroupState) then) =
      _$CreateGroupStateCopyWithImpl<$Res>;
  $Res call({String name, FormStatus status});
}

/// @nodoc
class _$CreateGroupStateCopyWithImpl<$Res>
    implements $CreateGroupStateCopyWith<$Res> {
  _$CreateGroupStateCopyWithImpl(this._value, this._then);

  final CreateGroupState _value;
  // ignore: unused_field
  final $Res Function(CreateGroupState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ));
  }
}

/// @nodoc
abstract class _$StateCopyWith<$Res>
    implements $CreateGroupStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) then) =
      __$StateCopyWithImpl<$Res>;
  @override
  $Res call({String name, FormStatus status});
}

/// @nodoc
class __$StateCopyWithImpl<$Res> extends _$CreateGroupStateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(_State _value, $Res Function(_State) _then)
      : super(_value, (v) => _then(v as _State));

  @override
  _State get _value => super._value as _State;

  @override
  $Res call({
    Object? name = freezed,
    Object? status = freezed,
  }) {
    return _then(_State(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
  const _$_State({this.name = '', this.status = const FormNotSent()});

  @JsonKey()
  @override
  final String name;
  @JsonKey()
  @override
  final FormStatus status;

  @override
  String toString() {
    return 'CreateGroupState.state(name: $name, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _State &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$StateCopyWith<_State> get copyWith =>
      __$StateCopyWithImpl<_State>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, FormStatus status) state,
  }) {
    return state(name, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, FormStatus status)? state,
  }) {
    return state?.call(name, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, FormStatus status)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(name, status);
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

abstract class _State implements CreateGroupState {
  const factory _State({String name, FormStatus status}) = _$_State;

  @override
  String get name;
  @override
  FormStatus get status;
  @override
  @JsonKey(ignore: true)
  _$StateCopyWith<_State> get copyWith => throw _privateConstructorUsedError;
}
