// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'join_group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JoinGroupEventTearOff {
  const _$JoinGroupEventTearOff();

  _Submit submit(String groupId) {
    return _Submit(
      groupId,
    );
  }
}

/// @nodoc
const $JoinGroupEvent = _$JoinGroupEventTearOff();

/// @nodoc
mixin _$JoinGroupEvent {
  String get groupId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupId) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JoinGroupEventCopyWith<JoinGroupEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinGroupEventCopyWith<$Res> {
  factory $JoinGroupEventCopyWith(
          JoinGroupEvent value, $Res Function(JoinGroupEvent) then) =
      _$JoinGroupEventCopyWithImpl<$Res>;
  $Res call({String groupId});
}

/// @nodoc
class _$JoinGroupEventCopyWithImpl<$Res>
    implements $JoinGroupEventCopyWith<$Res> {
  _$JoinGroupEventCopyWithImpl(this._value, this._then);

  final JoinGroupEvent _value;
  // ignore: unused_field
  final $Res Function(JoinGroupEvent) _then;

  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res> implements $JoinGroupEventCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
  @override
  $Res call({String groupId});
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$JoinGroupEventCopyWithImpl<$Res>
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
    return 'JoinGroupEvent.submit(groupId: $groupId)';
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
  }) {
    return submit(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String groupId)? submit,
  }) {
    return submit?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupId)? submit,
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
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements JoinGroupEvent {
  const factory _Submit(String groupId) = _$_Submit;

  @override
  String get groupId;
  @override
  @JsonKey(ignore: true)
  _$SubmitCopyWith<_Submit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$JoinGroupStateTearOff {
  const _$JoinGroupStateTearOff();

  _State state({FormStatus status = const FormNotSent()}) {
    return _State(
      status: status,
    );
  }
}

/// @nodoc
const $JoinGroupState = _$JoinGroupStateTearOff();

/// @nodoc
mixin _$JoinGroupState {
  FormStatus get status => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormStatus status) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FormStatus status)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormStatus status)? state,
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
  $JoinGroupStateCopyWith<JoinGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinGroupStateCopyWith<$Res> {
  factory $JoinGroupStateCopyWith(
          JoinGroupState value, $Res Function(JoinGroupState) then) =
      _$JoinGroupStateCopyWithImpl<$Res>;
  $Res call({FormStatus status});
}

/// @nodoc
class _$JoinGroupStateCopyWithImpl<$Res>
    implements $JoinGroupStateCopyWith<$Res> {
  _$JoinGroupStateCopyWithImpl(this._value, this._then);

  final JoinGroupState _value;
  // ignore: unused_field
  final $Res Function(JoinGroupState) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ));
  }
}

/// @nodoc
abstract class _$StateCopyWith<$Res> implements $JoinGroupStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) then) =
      __$StateCopyWithImpl<$Res>;
  @override
  $Res call({FormStatus status});
}

/// @nodoc
class __$StateCopyWithImpl<$Res> extends _$JoinGroupStateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(_State _value, $Res Function(_State) _then)
      : super(_value, (v) => _then(v as _State));

  @override
  _State get _value => super._value as _State;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_State(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ));
  }
}

/// @nodoc

class _$_State implements _State {
  const _$_State({this.status = const FormNotSent()});

  @JsonKey()
  @override
  final FormStatus status;

  @override
  String toString() {
    return 'JoinGroupState.state(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _State &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$StateCopyWith<_State> get copyWith =>
      __$StateCopyWithImpl<_State>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormStatus status) state,
  }) {
    return state(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FormStatus status)? state,
  }) {
    return state?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormStatus status)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(status);
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

abstract class _State implements JoinGroupState {
  const factory _State({FormStatus status}) = _$_State;

  @override
  FormStatus get status;
  @override
  @JsonKey(ignore: true)
  _$StateCopyWith<_State> get copyWith => throw _privateConstructorUsedError;
}
