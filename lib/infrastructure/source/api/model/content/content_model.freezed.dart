// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiContentModel _$ApiContentModelFromJson(Map<String, dynamic> json) {
  return _ApiContentModel.fromJson(json);
}

/// @nodoc
class _$ApiContentModelTearOff {
  const _$ApiContentModelTearOff();

  _ApiContentModel call(
      {required String id,
      required String title,
      required String content,
      required DateTime createdAt,
      required String creatorId,
      required String groupId,
      required String parentId,
      required String contentType}) {
    return _ApiContentModel(
      id: id,
      title: title,
      content: content,
      createdAt: createdAt,
      creatorId: creatorId,
      groupId: groupId,
      parentId: parentId,
      contentType: contentType,
    );
  }

  ApiContentModel fromJson(Map<String, Object?> json) {
    return ApiContentModel.fromJson(json);
  }
}

/// @nodoc
const $ApiContentModel = _$ApiContentModelTearOff();

/// @nodoc
mixin _$ApiContentModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  String get parentId => throw _privateConstructorUsedError;
  String get contentType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiContentModelCopyWith<ApiContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiContentModelCopyWith<$Res> {
  factory $ApiContentModelCopyWith(
          ApiContentModel value, $Res Function(ApiContentModel) then) =
      _$ApiContentModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String content,
      DateTime createdAt,
      String creatorId,
      String groupId,
      String parentId,
      String contentType});
}

/// @nodoc
class _$ApiContentModelCopyWithImpl<$Res>
    implements $ApiContentModelCopyWith<$Res> {
  _$ApiContentModelCopyWithImpl(this._value, this._then);

  final ApiContentModel _value;
  // ignore: unused_field
  final $Res Function(ApiContentModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? creatorId = freezed,
    Object? groupId = freezed,
    Object? parentId = freezed,
    Object? contentType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ApiContentModelCopyWith<$Res>
    implements $ApiContentModelCopyWith<$Res> {
  factory _$ApiContentModelCopyWith(
          _ApiContentModel value, $Res Function(_ApiContentModel) then) =
      __$ApiContentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String content,
      DateTime createdAt,
      String creatorId,
      String groupId,
      String parentId,
      String contentType});
}

/// @nodoc
class __$ApiContentModelCopyWithImpl<$Res>
    extends _$ApiContentModelCopyWithImpl<$Res>
    implements _$ApiContentModelCopyWith<$Res> {
  __$ApiContentModelCopyWithImpl(
      _ApiContentModel _value, $Res Function(_ApiContentModel) _then)
      : super(_value, (v) => _then(v as _ApiContentModel));

  @override
  _ApiContentModel get _value => super._value as _ApiContentModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? creatorId = freezed,
    Object? groupId = freezed,
    Object? parentId = freezed,
    Object? contentType = freezed,
  }) {
    return _then(_ApiContentModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiContentModel implements _ApiContentModel {
  const _$_ApiContentModel(
      {required this.id,
      required this.title,
      required this.content,
      required this.createdAt,
      required this.creatorId,
      required this.groupId,
      required this.parentId,
      required this.contentType});

  factory _$_ApiContentModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApiContentModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String content;
  @override
  final DateTime createdAt;
  @override
  final String creatorId;
  @override
  final String groupId;
  @override
  final String parentId;
  @override
  final String contentType;

  @override
  String toString() {
    return 'ApiContentModel(id: $id, title: $title, content: $content, createdAt: $createdAt, creatorId: $creatorId, groupId: $groupId, parentId: $parentId, contentType: $contentType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiContentModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.creatorId, creatorId) &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality()
                .equals(other.contentType, contentType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(creatorId),
      const DeepCollectionEquality().hash(groupId),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(contentType));

  @JsonKey(ignore: true)
  @override
  _$ApiContentModelCopyWith<_ApiContentModel> get copyWith =>
      __$ApiContentModelCopyWithImpl<_ApiContentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiContentModelToJson(this);
  }
}

abstract class _ApiContentModel implements ApiContentModel {
  const factory _ApiContentModel(
      {required String id,
      required String title,
      required String content,
      required DateTime createdAt,
      required String creatorId,
      required String groupId,
      required String parentId,
      required String contentType}) = _$_ApiContentModel;

  factory _ApiContentModel.fromJson(Map<String, dynamic> json) =
      _$_ApiContentModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get content;
  @override
  DateTime get createdAt;
  @override
  String get creatorId;
  @override
  String get groupId;
  @override
  String get parentId;
  @override
  String get contentType;
  @override
  @JsonKey(ignore: true)
  _$ApiContentModelCopyWith<_ApiContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
