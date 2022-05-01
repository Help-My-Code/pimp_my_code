// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiGroupModel _$ApiGroupModelFromJson(Map<String, dynamic> json) {
  return _ApiGroupModel.fromJson(json);
}

/// @nodoc
class _$ApiGroupModelTearOff {
  const _$ApiGroupModelTearOff();

  _ApiGroupModel call(
      {required String id,
      required String name,
      String? description,
      required String confidentiality,
      @JsonKey(name: 'principal_picture_url') String? principalPictureUrl,
      required ApiUserModel creator}) {
    return _ApiGroupModel(
      id: id,
      name: name,
      description: description,
      confidentiality: confidentiality,
      principalPictureUrl: principalPictureUrl,
      creator: creator,
    );
  }

  ApiGroupModel fromJson(Map<String, Object?> json) {
    return ApiGroupModel.fromJson(json);
  }
}

/// @nodoc
const $ApiGroupModel = _$ApiGroupModelTearOff();

/// @nodoc
mixin _$ApiGroupModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get confidentiality => throw _privateConstructorUsedError;
  @JsonKey(name: 'principal_picture_url')
  String? get principalPictureUrl => throw _privateConstructorUsedError;
  ApiUserModel get creator => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiGroupModelCopyWith<ApiGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiGroupModelCopyWith<$Res> {
  factory $ApiGroupModelCopyWith(
          ApiGroupModel value, $Res Function(ApiGroupModel) then) =
      _$ApiGroupModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String? description,
      String confidentiality,
      @JsonKey(name: 'principal_picture_url') String? principalPictureUrl,
      ApiUserModel creator});

  $ApiUserModelCopyWith<$Res> get creator;
}

/// @nodoc
class _$ApiGroupModelCopyWithImpl<$Res>
    implements $ApiGroupModelCopyWith<$Res> {
  _$ApiGroupModelCopyWithImpl(this._value, this._then);

  final ApiGroupModel _value;
  // ignore: unused_field
  final $Res Function(ApiGroupModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? confidentiality = freezed,
    Object? principalPictureUrl = freezed,
    Object? creator = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      confidentiality: confidentiality == freezed
          ? _value.confidentiality
          : confidentiality // ignore: cast_nullable_to_non_nullable
              as String,
      principalPictureUrl: principalPictureUrl == freezed
          ? _value.principalPictureUrl
          : principalPictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as ApiUserModel,
    ));
  }

  @override
  $ApiUserModelCopyWith<$Res> get creator {
    return $ApiUserModelCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value));
    });
  }
}

/// @nodoc
abstract class _$ApiGroupModelCopyWith<$Res>
    implements $ApiGroupModelCopyWith<$Res> {
  factory _$ApiGroupModelCopyWith(
          _ApiGroupModel value, $Res Function(_ApiGroupModel) then) =
      __$ApiGroupModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String? description,
      String confidentiality,
      @JsonKey(name: 'principal_picture_url') String? principalPictureUrl,
      ApiUserModel creator});

  @override
  $ApiUserModelCopyWith<$Res> get creator;
}

/// @nodoc
class __$ApiGroupModelCopyWithImpl<$Res>
    extends _$ApiGroupModelCopyWithImpl<$Res>
    implements _$ApiGroupModelCopyWith<$Res> {
  __$ApiGroupModelCopyWithImpl(
      _ApiGroupModel _value, $Res Function(_ApiGroupModel) _then)
      : super(_value, (v) => _then(v as _ApiGroupModel));

  @override
  _ApiGroupModel get _value => super._value as _ApiGroupModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? confidentiality = freezed,
    Object? principalPictureUrl = freezed,
    Object? creator = freezed,
  }) {
    return _then(_ApiGroupModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      confidentiality: confidentiality == freezed
          ? _value.confidentiality
          : confidentiality // ignore: cast_nullable_to_non_nullable
              as String,
      principalPictureUrl: principalPictureUrl == freezed
          ? _value.principalPictureUrl
          : principalPictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as ApiUserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiGroupModel implements _ApiGroupModel {
  const _$_ApiGroupModel(
      {required this.id,
      required this.name,
      this.description,
      required this.confidentiality,
      @JsonKey(name: 'principal_picture_url') this.principalPictureUrl,
      required this.creator});

  factory _$_ApiGroupModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApiGroupModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String confidentiality;
  @override
  @JsonKey(name: 'principal_picture_url')
  final String? principalPictureUrl;
  @override
  final ApiUserModel creator;

  @override
  String toString() {
    return 'ApiGroupModel(id: $id, name: $name, description: $description, confidentiality: $confidentiality, principalPictureUrl: $principalPictureUrl, creator: $creator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiGroupModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.confidentiality, confidentiality) &&
            const DeepCollectionEquality()
                .equals(other.principalPictureUrl, principalPictureUrl) &&
            const DeepCollectionEquality().equals(other.creator, creator));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(confidentiality),
      const DeepCollectionEquality().hash(principalPictureUrl),
      const DeepCollectionEquality().hash(creator));

  @JsonKey(ignore: true)
  @override
  _$ApiGroupModelCopyWith<_ApiGroupModel> get copyWith =>
      __$ApiGroupModelCopyWithImpl<_ApiGroupModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiGroupModelToJson(this);
  }
}

abstract class _ApiGroupModel implements ApiGroupModel {
  const factory _ApiGroupModel(
      {required String id,
      required String name,
      String? description,
      required String confidentiality,
      @JsonKey(name: 'principal_picture_url') String? principalPictureUrl,
      required ApiUserModel creator}) = _$_ApiGroupModel;

  factory _ApiGroupModel.fromJson(Map<String, dynamic> json) =
      _$_ApiGroupModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String get confidentiality;
  @override
  @JsonKey(name: 'principal_picture_url')
  String? get principalPictureUrl;
  @override
  ApiUserModel get creator;
  @override
  @JsonKey(ignore: true)
  _$ApiGroupModelCopyWith<_ApiGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}
