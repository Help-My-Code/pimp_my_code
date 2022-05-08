// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContentTearOff {
  const _$ContentTearOff();

  _Content call(
      {required String content,
      required DateTime createdAt,
      required String creatorId,
      required ContentType contentType,
      required List<String> medias,
      required String username,
      String? id,
      String? groupId,
      User? creator,
      String? title,
      String? parentId,
      String? userPicture,
      String? code,
      String? codeResult,
      bool isLike = false,
      bool isDislike = false,
      required int numberOfLikes,
      required int numberOfDislikes,
      required int numberOfComments}) {
    return _Content(
      content: content,
      createdAt: createdAt,
      creatorId: creatorId,
      contentType: contentType,
      medias: medias,
      username: username,
      id: id,
      groupId: groupId,
      creator: creator,
      title: title,
      parentId: parentId,
      userPicture: userPicture,
      code: code,
      codeResult: codeResult,
      isLike: isLike,
      isDislike: isDislike,
      numberOfLikes: numberOfLikes,
      numberOfDislikes: numberOfDislikes,
      numberOfComments: numberOfComments,
    );
  }
}

/// @nodoc
const $Content = _$ContentTearOff();

/// @nodoc
mixin _$Content {
  String get content => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  ContentType get contentType => throw _privateConstructorUsedError;
  List<String> get medias => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get groupId => throw _privateConstructorUsedError;
  User? get creator => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  String? get userPicture => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get codeResult => throw _privateConstructorUsedError;
  bool get isLike => throw _privateConstructorUsedError;
  bool get isDislike => throw _privateConstructorUsedError;
  int get numberOfLikes => throw _privateConstructorUsedError;
  int get numberOfDislikes => throw _privateConstructorUsedError;
  int get numberOfComments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res>;
  $Res call(
      {String content,
      DateTime createdAt,
      String creatorId,
      ContentType contentType,
      List<String> medias,
      String username,
      String? id,
      String? groupId,
      User? creator,
      String? title,
      String? parentId,
      String? userPicture,
      String? code,
      String? codeResult,
      bool isLike,
      bool isDislike,
      int numberOfLikes,
      int numberOfDislikes,
      int numberOfComments});
}

/// @nodoc
class _$ContentCopyWithImpl<$Res> implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  final Content _value;
  // ignore: unused_field
  final $Res Function(Content) _then;

  @override
  $Res call({
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? creatorId = freezed,
    Object? contentType = freezed,
    Object? medias = freezed,
    Object? username = freezed,
    Object? id = freezed,
    Object? groupId = freezed,
    Object? creator = freezed,
    Object? title = freezed,
    Object? parentId = freezed,
    Object? userPicture = freezed,
    Object? code = freezed,
    Object? codeResult = freezed,
    Object? isLike = freezed,
    Object? isDislike = freezed,
    Object? numberOfLikes = freezed,
    Object? numberOfDislikes = freezed,
    Object? numberOfComments = freezed,
  }) {
    return _then(_value.copyWith(
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
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      medias: medias == freezed
          ? _value.medias
          : medias // ignore: cast_nullable_to_non_nullable
              as List<String>,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      userPicture: userPicture == freezed
          ? _value.userPicture
          : userPicture // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      codeResult: codeResult == freezed
          ? _value.codeResult
          : codeResult // ignore: cast_nullable_to_non_nullable
              as String?,
      isLike: isLike == freezed
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
      isDislike: isDislike == freezed
          ? _value.isDislike
          : isDislike // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$ContentCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$ContentCopyWith(_Content value, $Res Function(_Content) then) =
      __$ContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String content,
      DateTime createdAt,
      String creatorId,
      ContentType contentType,
      List<String> medias,
      String username,
      String? id,
      String? groupId,
      User? creator,
      String? title,
      String? parentId,
      String? userPicture,
      String? code,
      String? codeResult,
      bool isLike,
      bool isDislike,
      int numberOfLikes,
      int numberOfDislikes,
      int numberOfComments});
}

/// @nodoc
class __$ContentCopyWithImpl<$Res> extends _$ContentCopyWithImpl<$Res>
    implements _$ContentCopyWith<$Res> {
  __$ContentCopyWithImpl(_Content _value, $Res Function(_Content) _then)
      : super(_value, (v) => _then(v as _Content));

  @override
  _Content get _value => super._value as _Content;

  @override
  $Res call({
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? creatorId = freezed,
    Object? contentType = freezed,
    Object? medias = freezed,
    Object? username = freezed,
    Object? id = freezed,
    Object? groupId = freezed,
    Object? creator = freezed,
    Object? title = freezed,
    Object? parentId = freezed,
    Object? userPicture = freezed,
    Object? code = freezed,
    Object? codeResult = freezed,
    Object? isLike = freezed,
    Object? isDislike = freezed,
    Object? numberOfLikes = freezed,
    Object? numberOfDislikes = freezed,
    Object? numberOfComments = freezed,
  }) {
    return _then(_Content(
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
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      medias: medias == freezed
          ? _value.medias
          : medias // ignore: cast_nullable_to_non_nullable
              as List<String>,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      userPicture: userPicture == freezed
          ? _value.userPicture
          : userPicture // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      codeResult: codeResult == freezed
          ? _value.codeResult
          : codeResult // ignore: cast_nullable_to_non_nullable
              as String?,
      isLike: isLike == freezed
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
      isDislike: isDislike == freezed
          ? _value.isDislike
          : isDislike // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_Content implements _Content {
  const _$_Content(
      {required this.content,
      required this.createdAt,
      required this.creatorId,
      required this.contentType,
      required this.medias,
      required this.username,
      this.id,
      this.groupId,
      this.creator,
      this.title,
      this.parentId,
      this.userPicture,
      this.code,
      this.codeResult,
      this.isLike = false,
      this.isDislike = false,
      required this.numberOfLikes,
      required this.numberOfDislikes,
      required this.numberOfComments});

  @override
  final String content;
  @override
  final DateTime createdAt;
  @override
  final String creatorId;
  @override
  final ContentType contentType;
  @override
  final List<String> medias;
  @override
  final String username;
  @override
  final String? id;
  @override
  final String? groupId;
  @override
  final User? creator;
  @override
  final String? title;
  @override
  final String? parentId;
  @override
  final String? userPicture;
  @override
  final String? code;
  @override
  final String? codeResult;
  @JsonKey()
  @override
  final bool isLike;
  @JsonKey()
  @override
  final bool isDislike;
  @override
  final int numberOfLikes;
  @override
  final int numberOfDislikes;
  @override
  final int numberOfComments;

  @override
  String toString() {
    return 'Content(content: $content, createdAt: $createdAt, creatorId: $creatorId, contentType: $contentType, medias: $medias, username: $username, id: $id, groupId: $groupId, creator: $creator, title: $title, parentId: $parentId, userPicture: $userPicture, code: $code, codeResult: $codeResult, isLike: $isLike, isDislike: $isDislike, numberOfLikes: $numberOfLikes, numberOfDislikes: $numberOfDislikes, numberOfComments: $numberOfComments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Content &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.creatorId, creatorId) &&
            const DeepCollectionEquality()
                .equals(other.contentType, contentType) &&
            const DeepCollectionEquality().equals(other.medias, medias) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality().equals(other.creator, creator) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality()
                .equals(other.userPicture, userPicture) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.codeResult, codeResult) &&
            const DeepCollectionEquality().equals(other.isLike, isLike) &&
            const DeepCollectionEquality().equals(other.isDislike, isDislike) &&
            const DeepCollectionEquality()
                .equals(other.numberOfLikes, numberOfLikes) &&
            const DeepCollectionEquality()
                .equals(other.numberOfDislikes, numberOfDislikes) &&
            const DeepCollectionEquality()
                .equals(other.numberOfComments, numberOfComments));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(content),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(creatorId),
        const DeepCollectionEquality().hash(contentType),
        const DeepCollectionEquality().hash(medias),
        const DeepCollectionEquality().hash(username),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(groupId),
        const DeepCollectionEquality().hash(creator),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(parentId),
        const DeepCollectionEquality().hash(userPicture),
        const DeepCollectionEquality().hash(code),
        const DeepCollectionEquality().hash(codeResult),
        const DeepCollectionEquality().hash(isLike),
        const DeepCollectionEquality().hash(isDislike),
        const DeepCollectionEquality().hash(numberOfLikes),
        const DeepCollectionEquality().hash(numberOfDislikes),
        const DeepCollectionEquality().hash(numberOfComments)
      ]);

  @JsonKey(ignore: true)
  @override
  _$ContentCopyWith<_Content> get copyWith =>
      __$ContentCopyWithImpl<_Content>(this, _$identity);
}

abstract class _Content implements Content {
  const factory _Content(
      {required String content,
      required DateTime createdAt,
      required String creatorId,
      required ContentType contentType,
      required List<String> medias,
      required String username,
      String? id,
      String? groupId,
      User? creator,
      String? title,
      String? parentId,
      String? userPicture,
      String? code,
      String? codeResult,
      bool isLike,
      bool isDislike,
      required int numberOfLikes,
      required int numberOfDislikes,
      required int numberOfComments}) = _$_Content;

  @override
  String get content;
  @override
  DateTime get createdAt;
  @override
  String get creatorId;
  @override
  ContentType get contentType;
  @override
  List<String> get medias;
  @override
  String get username;
  @override
  String? get id;
  @override
  String? get groupId;
  @override
  User? get creator;
  @override
  String? get title;
  @override
  String? get parentId;
  @override
  String? get userPicture;
  @override
  String? get code;
  @override
  String? get codeResult;
  @override
  bool get isLike;
  @override
  bool get isDislike;
  @override
  int get numberOfLikes;
  @override
  int get numberOfDislikes;
  @override
  int get numberOfComments;
  @override
  @JsonKey(ignore: true)
  _$ContentCopyWith<_Content> get copyWith =>
      throw _privateConstructorUsedError;
}
