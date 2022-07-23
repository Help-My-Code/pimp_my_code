// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_content_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdateContentEventTearOff {
  const _$UpdateContentEventTearOff();

  _Submit submit(String contentId, VoidCallback reloadFunction) {
    return _Submit(
      contentId,
      reloadFunction,
    );
  }

  _UpdateTitle updateTitle(String title) {
    return _UpdateTitle(
      title,
    );
  }

  _UpdateContent updateContent(String content) {
    return _UpdateContent(
      content,
    );
  }

  _Loaded loaded(String title, String content) {
    return _Loaded(
      title,
      content,
    );
  }
}

/// @nodoc
const $UpdateContentEvent = _$UpdateContentEventTearOff();

/// @nodoc
mixin _$UpdateContentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentId, VoidCallback reloadFunction)
        submit,
    required TResult Function(String title) updateTitle,
    required TResult Function(String content) updateContent,
    required TResult Function(String title, String content) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String contentId, VoidCallback reloadFunction)? submit,
    TResult Function(String title)? updateTitle,
    TResult Function(String content)? updateContent,
    TResult Function(String title, String content)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentId, VoidCallback reloadFunction)? submit,
    TResult Function(String title)? updateTitle,
    TResult Function(String content)? updateContent,
    TResult Function(String title, String content)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateTitle value) updateTitle,
    required TResult Function(_UpdateContent value) updateContent,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateTitle value)? updateTitle,
    TResult Function(_UpdateContent value)? updateContent,
    TResult Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateTitle value)? updateTitle,
    TResult Function(_UpdateContent value)? updateContent,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateContentEventCopyWith<$Res> {
  factory $UpdateContentEventCopyWith(
          UpdateContentEvent value, $Res Function(UpdateContentEvent) then) =
      _$UpdateContentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateContentEventCopyWithImpl<$Res>
    implements $UpdateContentEventCopyWith<$Res> {
  _$UpdateContentEventCopyWithImpl(this._value, this._then);

  final UpdateContentEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateContentEvent) _then;
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
  $Res call({String contentId, VoidCallback reloadFunction});
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$UpdateContentEventCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
      : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;

  @override
  $Res call({
    Object? contentId = freezed,
    Object? reloadFunction = freezed,
  }) {
    return _then(_Submit(
      contentId == freezed
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      reloadFunction == freezed
          ? _value.reloadFunction
          : reloadFunction // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit(this.contentId, this.reloadFunction);

  @override
  final String contentId;
  @override
  final VoidCallback reloadFunction;

  @override
  String toString() {
    return 'UpdateContentEvent.submit(contentId: $contentId, reloadFunction: $reloadFunction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Submit &&
            const DeepCollectionEquality().equals(other.contentId, contentId) &&
            (identical(other.reloadFunction, reloadFunction) ||
                other.reloadFunction == reloadFunction));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(contentId), reloadFunction);

  @JsonKey(ignore: true)
  @override
  _$SubmitCopyWith<_Submit> get copyWith =>
      __$SubmitCopyWithImpl<_Submit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentId, VoidCallback reloadFunction)
        submit,
    required TResult Function(String title) updateTitle,
    required TResult Function(String content) updateContent,
    required TResult Function(String title, String content) loaded,
  }) {
    return submit(contentId, reloadFunction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String contentId, VoidCallback reloadFunction)? submit,
    TResult Function(String title)? updateTitle,
    TResult Function(String content)? updateContent,
    TResult Function(String title, String content)? loaded,
  }) {
    return submit?.call(contentId, reloadFunction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentId, VoidCallback reloadFunction)? submit,
    TResult Function(String title)? updateTitle,
    TResult Function(String content)? updateContent,
    TResult Function(String title, String content)? loaded,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(contentId, reloadFunction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateTitle value) updateTitle,
    required TResult Function(_UpdateContent value) updateContent,
    required TResult Function(_Loaded value) loaded,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateTitle value)? updateTitle,
    TResult Function(_UpdateContent value)? updateContent,
    TResult Function(_Loaded value)? loaded,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateTitle value)? updateTitle,
    TResult Function(_UpdateContent value)? updateContent,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements UpdateContentEvent {
  const factory _Submit(String contentId, VoidCallback reloadFunction) =
      _$_Submit;

  String get contentId;
  VoidCallback get reloadFunction;
  @JsonKey(ignore: true)
  _$SubmitCopyWith<_Submit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateTitleCopyWith<$Res> {
  factory _$UpdateTitleCopyWith(
          _UpdateTitle value, $Res Function(_UpdateTitle) then) =
      __$UpdateTitleCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$UpdateTitleCopyWithImpl<$Res>
    extends _$UpdateContentEventCopyWithImpl<$Res>
    implements _$UpdateTitleCopyWith<$Res> {
  __$UpdateTitleCopyWithImpl(
      _UpdateTitle _value, $Res Function(_UpdateTitle) _then)
      : super(_value, (v) => _then(v as _UpdateTitle));

  @override
  _UpdateTitle get _value => super._value as _UpdateTitle;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_UpdateTitle(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateTitle implements _UpdateTitle {
  const _$_UpdateTitle(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'UpdateContentEvent.updateTitle(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateTitle &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$UpdateTitleCopyWith<_UpdateTitle> get copyWith =>
      __$UpdateTitleCopyWithImpl<_UpdateTitle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentId, VoidCallback reloadFunction)
        submit,
    required TResult Function(String title) updateTitle,
    required TResult Function(String content) updateContent,
    required TResult Function(String title, String content) loaded,
  }) {
    return updateTitle(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String contentId, VoidCallback reloadFunction)? submit,
    TResult Function(String title)? updateTitle,
    TResult Function(String content)? updateContent,
    TResult Function(String title, String content)? loaded,
  }) {
    return updateTitle?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentId, VoidCallback reloadFunction)? submit,
    TResult Function(String title)? updateTitle,
    TResult Function(String content)? updateContent,
    TResult Function(String title, String content)? loaded,
    required TResult orElse(),
  }) {
    if (updateTitle != null) {
      return updateTitle(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateTitle value) updateTitle,
    required TResult Function(_UpdateContent value) updateContent,
    required TResult Function(_Loaded value) loaded,
  }) {
    return updateTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateTitle value)? updateTitle,
    TResult Function(_UpdateContent value)? updateContent,
    TResult Function(_Loaded value)? loaded,
  }) {
    return updateTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateTitle value)? updateTitle,
    TResult Function(_UpdateContent value)? updateContent,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (updateTitle != null) {
      return updateTitle(this);
    }
    return orElse();
  }
}

abstract class _UpdateTitle implements UpdateContentEvent {
  const factory _UpdateTitle(String title) = _$_UpdateTitle;

  String get title;
  @JsonKey(ignore: true)
  _$UpdateTitleCopyWith<_UpdateTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateContentCopyWith<$Res> {
  factory _$UpdateContentCopyWith(
          _UpdateContent value, $Res Function(_UpdateContent) then) =
      __$UpdateContentCopyWithImpl<$Res>;
  $Res call({String content});
}

/// @nodoc
class __$UpdateContentCopyWithImpl<$Res>
    extends _$UpdateContentEventCopyWithImpl<$Res>
    implements _$UpdateContentCopyWith<$Res> {
  __$UpdateContentCopyWithImpl(
      _UpdateContent _value, $Res Function(_UpdateContent) _then)
      : super(_value, (v) => _then(v as _UpdateContent));

  @override
  _UpdateContent get _value => super._value as _UpdateContent;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_UpdateContent(
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateContent implements _UpdateContent {
  const _$_UpdateContent(this.content);

  @override
  final String content;

  @override
  String toString() {
    return 'UpdateContentEvent.updateContent(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateContent &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$UpdateContentCopyWith<_UpdateContent> get copyWith =>
      __$UpdateContentCopyWithImpl<_UpdateContent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentId, VoidCallback reloadFunction)
        submit,
    required TResult Function(String title) updateTitle,
    required TResult Function(String content) updateContent,
    required TResult Function(String title, String content) loaded,
  }) {
    return updateContent(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String contentId, VoidCallback reloadFunction)? submit,
    TResult Function(String title)? updateTitle,
    TResult Function(String content)? updateContent,
    TResult Function(String title, String content)? loaded,
  }) {
    return updateContent?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentId, VoidCallback reloadFunction)? submit,
    TResult Function(String title)? updateTitle,
    TResult Function(String content)? updateContent,
    TResult Function(String title, String content)? loaded,
    required TResult orElse(),
  }) {
    if (updateContent != null) {
      return updateContent(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateTitle value) updateTitle,
    required TResult Function(_UpdateContent value) updateContent,
    required TResult Function(_Loaded value) loaded,
  }) {
    return updateContent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateTitle value)? updateTitle,
    TResult Function(_UpdateContent value)? updateContent,
    TResult Function(_Loaded value)? loaded,
  }) {
    return updateContent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateTitle value)? updateTitle,
    TResult Function(_UpdateContent value)? updateContent,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (updateContent != null) {
      return updateContent(this);
    }
    return orElse();
  }
}

abstract class _UpdateContent implements UpdateContentEvent {
  const factory _UpdateContent(String content) = _$_UpdateContent;

  String get content;
  @JsonKey(ignore: true)
  _$UpdateContentCopyWith<_UpdateContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({String title, String content});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$UpdateContentEventCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_Loaded(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.title, this.content);

  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'UpdateContentEvent.loaded(title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentId, VoidCallback reloadFunction)
        submit,
    required TResult Function(String title) updateTitle,
    required TResult Function(String content) updateContent,
    required TResult Function(String title, String content) loaded,
  }) {
    return loaded(title, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String contentId, VoidCallback reloadFunction)? submit,
    TResult Function(String title)? updateTitle,
    TResult Function(String content)? updateContent,
    TResult Function(String title, String content)? loaded,
  }) {
    return loaded?.call(title, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentId, VoidCallback reloadFunction)? submit,
    TResult Function(String title)? updateTitle,
    TResult Function(String content)? updateContent,
    TResult Function(String title, String content)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(title, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
    required TResult Function(_UpdateTitle value) updateTitle,
    required TResult Function(_UpdateContent value) updateContent,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateTitle value)? updateTitle,
    TResult Function(_UpdateContent value)? updateContent,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    TResult Function(_UpdateTitle value)? updateTitle,
    TResult Function(_UpdateContent value)? updateContent,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements UpdateContentEvent {
  const factory _Loaded(String title, String content) = _$_Loaded;

  String get title;
  String get content;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpdateContentStateTearOff {
  const _$UpdateContentStateTearOff();

  _State state(
      {String content = '',
      String title = '',
      FormStatus status = const FormNotSent()}) {
    return _State(
      content: content,
      title: title,
      status: status,
    );
  }
}

/// @nodoc
const $UpdateContentState = _$UpdateContentStateTearOff();

/// @nodoc
mixin _$UpdateContentState {
  String get content => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  FormStatus get status => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content, String title, FormStatus status)
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content, String title, FormStatus status)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content, String title, FormStatus status)? state,
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
  $UpdateContentStateCopyWith<UpdateContentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateContentStateCopyWith<$Res> {
  factory $UpdateContentStateCopyWith(
          UpdateContentState value, $Res Function(UpdateContentState) then) =
      _$UpdateContentStateCopyWithImpl<$Res>;
  $Res call({String content, String title, FormStatus status});
}

/// @nodoc
class _$UpdateContentStateCopyWithImpl<$Res>
    implements $UpdateContentStateCopyWith<$Res> {
  _$UpdateContentStateCopyWithImpl(this._value, this._then);

  final UpdateContentState _value;
  // ignore: unused_field
  final $Res Function(UpdateContentState) _then;

  @override
  $Res call({
    Object? content = freezed,
    Object? title = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
    implements $UpdateContentStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) then) =
      __$StateCopyWithImpl<$Res>;
  @override
  $Res call({String content, String title, FormStatus status});
}

/// @nodoc
class __$StateCopyWithImpl<$Res> extends _$UpdateContentStateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(_State _value, $Res Function(_State) _then)
      : super(_value, (v) => _then(v as _State));

  @override
  _State get _value => super._value as _State;

  @override
  $Res call({
    Object? content = freezed,
    Object? title = freezed,
    Object? status = freezed,
  }) {
    return _then(_State(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
      {this.content = '', this.title = '', this.status = const FormNotSent()});

  @JsonKey()
  @override
  final String content;
  @JsonKey()
  @override
  final String title;
  @JsonKey()
  @override
  final FormStatus status;

  @override
  String toString() {
    return 'UpdateContentState.state(content: $content, title: $title, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _State &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$StateCopyWith<_State> get copyWith =>
      __$StateCopyWithImpl<_State>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content, String title, FormStatus status)
        state,
  }) {
    return state(content, title, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content, String title, FormStatus status)? state,
  }) {
    return state?.call(content, title, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content, String title, FormStatus status)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(content, title, status);
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

abstract class _State implements UpdateContentState {
  const factory _State({String content, String title, FormStatus status}) =
      _$_State;

  @override
  String get content;
  @override
  String get title;
  @override
  FormStatus get status;
  @override
  @JsonKey(ignore: true)
  _$StateCopyWith<_State> get copyWith => throw _privateConstructorUsedError;
}
