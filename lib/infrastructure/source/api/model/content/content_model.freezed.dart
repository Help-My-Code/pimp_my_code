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
      required String content,
      required String creatorId,
      required List<String> medias,
      required String username,
      String? title,
      String? code,
      String? codeResult,
      ApiUserModel? creator,
      String? userImage,
      @JsonKey(name: 'createdAt') required DateTime createdAt,
      @JsonKey(name: 'groupId') String? groupId,
      @JsonKey(name: 'parentId') String? parentId,
      @JsonKey(name: 'contentType') required String contentType,
      required int numberOfLikes,
      required int numberOfDislikes,
      required int numberOfComments}) {
    return _ApiContentModel(
      id: id,
      content: content,
      creatorId: creatorId,
      medias: medias,
      username: username,
      title: title,
      code: code,
      codeResult: codeResult,
      creator: creator,
      userImage: userImage,
      createdAt: createdAt,
      groupId: groupId,
      parentId: parentId,
      contentType: contentType,
      numberOfLikes: numberOfLikes,
      numberOfDislikes: numberOfDislikes,
      numberOfComments: numberOfComments,
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
  String get content => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  List<String> get medias => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get codeResult => throw _privateConstructorUsedError;
  ApiUserModel? get creator => throw _privateConstructorUsedError;
  String? get userImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'groupId')
  String? get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'parentId')
  String? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'contentType')
  String get contentType => throw _privateConstructorUsedError;
  int get numberOfLikes => throw _privateConstructorUsedError;
  int get numberOfDislikes => throw _privateConstructorUsedError;
  int get numberOfComments => throw _privateConstructorUsedError;

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
      String content,
      String creatorId,
      List<String> medias,
      String username,
      String? title,
      String? code,
      String? codeResult,
      ApiUserModel? creator,
      String? userImage,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'groupId') String? groupId,
      @JsonKey(name: 'parentId') String? parentId,
      @JsonKey(name: 'contentType') String contentType,
      int numberOfLikes,
      int numberOfDislikes,
      int numberOfComments});

  $ApiUserModelCopyWith<$Res>? get creator;
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
    Object? content = freezed,
    Object? creatorId = freezed,
    Object? medias = freezed,
    Object? username = freezed,
    Object? title = freezed,
    Object? code = freezed,
    Object? codeResult = freezed,
    Object? creator = freezed,
    Object? userImage = freezed,
    Object? createdAt = freezed,
    Object? groupId = freezed,
    Object? parentId = freezed,
    Object? contentType = freezed,
    Object? numberOfLikes = freezed,
    Object? numberOfDislikes = freezed,
    Object? numberOfComments = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      medias: medias == freezed
          ? _value.medias
          : medias // ignore: cast_nullable_to_non_nullable
              as List<String>,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      codeResult: codeResult == freezed
          ? _value.codeResult
          : codeResult // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as ApiUserModel?,
      userImage: userImage == freezed
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfLikes: numberOfLikes == freezed
          ? _value.numberOfLikes
          : numberOfLikes // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfDislikes: numberOfDislikes == freezed
          ? _value.numberOfDislikes
          : numberOfDislikes // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfComments: numberOfComments == freezed
          ? _value.numberOfComments
          : numberOfComments // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ApiUserModelCopyWith<$Res>? get creator {
    if (_value.creator == null) {
      return null;
    }

    return $ApiUserModelCopyWith<$Res>(_value.creator!, (value) {
      return _then(_value.copyWith(creator: value));
    });
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
      String content,
      String creatorId,
      List<String> medias,
      String username,
      String? title,
      String? code,
      String? codeResult,
      ApiUserModel? creator,
      String? userImage,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'groupId') String? groupId,
      @JsonKey(name: 'parentId') String? parentId,
      @JsonKey(name: 'contentType') String contentType,
      int numberOfLikes,
      int numberOfDislikes,
      int numberOfComments});

  @override
  $ApiUserModelCopyWith<$Res>? get creator;
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
    Object? content = freezed,
    Object? creatorId = freezed,
    Object? medias = freezed,
    Object? username = freezed,
    Object? title = freezed,
    Object? code = freezed,
    Object? codeResult = freezed,
    Object? creator = freezed,
    Object? userImage = freezed,
    Object? createdAt = freezed,
    Object? groupId = freezed,
    Object? parentId = freezed,
    Object? contentType = freezed,
    Object? numberOfLikes = freezed,
    Object? numberOfDislikes = freezed,
    Object? numberOfComments = freezed,
  }) {
    return _then(_ApiContentModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      medias: medias == freezed
          ? _value.medias
          : medias // ignore: cast_nullable_to_non_nullable
              as List<String>,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      codeResult: codeResult == freezed
          ? _value.codeResult
          : codeResult // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as ApiUserModel?,
      userImage: userImage == freezed
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfLikes: numberOfLikes == freezed
          ? _value.numberOfLikes
          : numberOfLikes // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfDislikes: numberOfDislikes == freezed
          ? _value.numberOfDislikes
          : numberOfDislikes // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfComments: numberOfComments == freezed
          ? _value.numberOfComments
          : numberOfComments // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiContentModel implements _ApiContentModel {
  const _$_ApiContentModel(
      {required this.id,
      required this.content,
      required this.creatorId,
      required this.medias,
      required this.username,
      this.title,
      this.code,
      this.codeResult,
      this.creator,
      this.userImage,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'groupId') this.groupId,
      @JsonKey(name: 'parentId') this.parentId,
      @JsonKey(name: 'contentType') required this.contentType,
      required this.numberOfLikes,
      required this.numberOfDislikes,
      required this.numberOfComments});

  factory _$_ApiContentModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApiContentModelFromJson(json);

  @override
  final String id;
  @override
  final String content;
  @override
  final String creatorId;
  @override
  final List<String> medias;
  @override
  final String username;
  @override
  final String? title;
  @override
  final String? code;
  @override
  final String? codeResult;
  @override
  final ApiUserModel? creator;
  @override
  final String? userImage;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'groupId')
  final String? groupId;
  @override
  @JsonKey(name: 'parentId')
  final String? parentId;
  @override
  @JsonKey(name: 'contentType')
  final String contentType;
  @override
  final int numberOfLikes;
  @override
  final int numberOfDislikes;
  @override
  final int numberOfComments;

  @override
  String toString() {
    return 'ApiContentModel(id: $id, content: $content, creatorId: $creatorId, medias: $medias, username: $username, title: $title, code: $code, codeResult: $codeResult, creator: $creator, userImage: $userImage, createdAt: $createdAt, groupId: $groupId, parentId: $parentId, contentType: $contentType, numberOfLikes: $numberOfLikes, numberOfDislikes: $numberOfDislikes, numberOfComments: $numberOfComments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiContentModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.creatorId, creatorId) &&
            const DeepCollectionEquality().equals(other.medias, medias) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.codeResult, codeResult) &&
            const DeepCollectionEquality().equals(other.creator, creator) &&
            const DeepCollectionEquality().equals(other.userImage, userImage) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality()
                .equals(other.contentType, contentType) &&
            const DeepCollectionEquality()
                .equals(other.numberOfLikes, numberOfLikes) &&
            const DeepCollectionEquality()
                .equals(other.numberOfDislikes, numberOfDislikes) &&
            const DeepCollectionEquality()
                .equals(other.numberOfComments, numberOfComments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(creatorId),
      const DeepCollectionEquality().hash(medias),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(codeResult),
      const DeepCollectionEquality().hash(creator),
      const DeepCollectionEquality().hash(userImage),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(groupId),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(contentType),
      const DeepCollectionEquality().hash(numberOfLikes),
      const DeepCollectionEquality().hash(numberOfDislikes),
      const DeepCollectionEquality().hash(numberOfComments));

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
      required String content,
      required String creatorId,
      required List<String> medias,
      required String username,
      String? title,
      String? code,
      String? codeResult,
      ApiUserModel? creator,
      String? userImage,
      @JsonKey(name: 'createdAt') required DateTime createdAt,
      @JsonKey(name: 'groupId') String? groupId,
      @JsonKey(name: 'parentId') String? parentId,
      @JsonKey(name: 'contentType') required String contentType,
      required int numberOfLikes,
      required int numberOfDislikes,
      required int numberOfComments}) = _$_ApiContentModel;

  factory _ApiContentModel.fromJson(Map<String, dynamic> json) =
      _$_ApiContentModel.fromJson;

  @override
  String get id;
  @override
  String get content;
  @override
  String get creatorId;
  @override
  List<String> get medias;
  @override
  String get username;
  @override
  String? get title;
  @override
  String? get code;
  @override
  String? get codeResult;
  @override
  ApiUserModel? get creator;
  @override
  String? get userImage;
  @override
  @JsonKey(name: 'createdAt')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'groupId')
  String? get groupId;
  @override
  @JsonKey(name: 'parentId')
  String? get parentId;
  @override
  @JsonKey(name: 'contentType')
  String get contentType;
  @override
  int get numberOfLikes;
  @override
  int get numberOfDislikes;
  @override
  int get numberOfComments;
  @override
  @JsonKey(ignore: true)
  _$ApiContentModelCopyWith<_ApiContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
