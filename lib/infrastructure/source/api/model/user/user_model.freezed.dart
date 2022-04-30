// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiUserModel _$ApiUserModelFromJson(Map<String, dynamic> json) {
  return _ApiUserModel.fromJson(json);
}

/// @nodoc
class _$ApiUserModelTearOff {
  const _$ApiUserModelTearOff();

  _ApiUserModel call(
      {required String id,
      required String email,
      required String password,
      required String firstname,
      required String lastname,
      String? description,
      @JsonKey(name: 'user_role')
          required String userRole,
      required String confidentiality,
      @JsonKey(name: 'principal_picture_url')
          required String principalPictureUrl}) {
    return _ApiUserModel(
      id: id,
      email: email,
      password: password,
      firstname: firstname,
      lastname: lastname,
      description: description,
      userRole: userRole,
      confidentiality: confidentiality,
      principalPictureUrl: principalPictureUrl,
    );
  }

  ApiUserModel fromJson(Map<String, Object?> json) {
    return ApiUserModel.fromJson(json);
  }
}

/// @nodoc
const $ApiUserModel = _$ApiUserModelTearOff();

/// @nodoc
mixin _$ApiUserModel {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_role')
  String get userRole => throw _privateConstructorUsedError;
  String get confidentiality => throw _privateConstructorUsedError;
  @JsonKey(name: 'principal_picture_url')
  String get principalPictureUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiUserModelCopyWith<ApiUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUserModelCopyWith<$Res> {
  factory $ApiUserModelCopyWith(
          ApiUserModel value, $Res Function(ApiUserModel) then) =
      _$ApiUserModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String email,
      String password,
      String firstname,
      String lastname,
      String? description,
      @JsonKey(name: 'user_role') String userRole,
      String confidentiality,
      @JsonKey(name: 'principal_picture_url') String principalPictureUrl});
}

/// @nodoc
class _$ApiUserModelCopyWithImpl<$Res> implements $ApiUserModelCopyWith<$Res> {
  _$ApiUserModelCopyWithImpl(this._value, this._then);

  final ApiUserModel _value;
  // ignore: unused_field
  final $Res Function(ApiUserModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? description = freezed,
    Object? userRole = freezed,
    Object? confidentiality = freezed,
    Object? principalPictureUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      userRole: userRole == freezed
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String,
      confidentiality: confidentiality == freezed
          ? _value.confidentiality
          : confidentiality // ignore: cast_nullable_to_non_nullable
              as String,
      principalPictureUrl: principalPictureUrl == freezed
          ? _value.principalPictureUrl
          : principalPictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ApiUserModelCopyWith<$Res>
    implements $ApiUserModelCopyWith<$Res> {
  factory _$ApiUserModelCopyWith(
          _ApiUserModel value, $Res Function(_ApiUserModel) then) =
      __$ApiUserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String email,
      String password,
      String firstname,
      String lastname,
      String? description,
      @JsonKey(name: 'user_role') String userRole,
      String confidentiality,
      @JsonKey(name: 'principal_picture_url') String principalPictureUrl});
}

/// @nodoc
class __$ApiUserModelCopyWithImpl<$Res> extends _$ApiUserModelCopyWithImpl<$Res>
    implements _$ApiUserModelCopyWith<$Res> {
  __$ApiUserModelCopyWithImpl(
      _ApiUserModel _value, $Res Function(_ApiUserModel) _then)
      : super(_value, (v) => _then(v as _ApiUserModel));

  @override
  _ApiUserModel get _value => super._value as _ApiUserModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? description = freezed,
    Object? userRole = freezed,
    Object? confidentiality = freezed,
    Object? principalPictureUrl = freezed,
  }) {
    return _then(_ApiUserModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      userRole: userRole == freezed
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String,
      confidentiality: confidentiality == freezed
          ? _value.confidentiality
          : confidentiality // ignore: cast_nullable_to_non_nullable
              as String,
      principalPictureUrl: principalPictureUrl == freezed
          ? _value.principalPictureUrl
          : principalPictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiUserModel implements _ApiUserModel {
  const _$_ApiUserModel(
      {required this.id,
      required this.email,
      required this.password,
      required this.firstname,
      required this.lastname,
      this.description,
      @JsonKey(name: 'user_role')
          required this.userRole,
      required this.confidentiality,
      @JsonKey(name: 'principal_picture_url')
          required this.principalPictureUrl});

  factory _$_ApiUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApiUserModelFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String password;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String? description;
  @override
  @JsonKey(name: 'user_role')
  final String userRole;
  @override
  final String confidentiality;
  @override
  @JsonKey(name: 'principal_picture_url')
  final String principalPictureUrl;

  @override
  String toString() {
    return 'ApiUserModel(id: $id, email: $email, password: $password, firstname: $firstname, lastname: $lastname, description: $description, userRole: $userRole, confidentiality: $confidentiality, principalPictureUrl: $principalPictureUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiUserModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.firstname, firstname) &&
            const DeepCollectionEquality().equals(other.lastname, lastname) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.userRole, userRole) &&
            const DeepCollectionEquality()
                .equals(other.confidentiality, confidentiality) &&
            const DeepCollectionEquality()
                .equals(other.principalPictureUrl, principalPictureUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(firstname),
      const DeepCollectionEquality().hash(lastname),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(userRole),
      const DeepCollectionEquality().hash(confidentiality),
      const DeepCollectionEquality().hash(principalPictureUrl));

  @JsonKey(ignore: true)
  @override
  _$ApiUserModelCopyWith<_ApiUserModel> get copyWith =>
      __$ApiUserModelCopyWithImpl<_ApiUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiUserModelToJson(this);
  }
}

abstract class _ApiUserModel implements ApiUserModel {
  const factory _ApiUserModel(
      {required String id,
      required String email,
      required String password,
      required String firstname,
      required String lastname,
      String? description,
      @JsonKey(name: 'user_role')
          required String userRole,
      required String confidentiality,
      @JsonKey(name: 'principal_picture_url')
          required String principalPictureUrl}) = _$_ApiUserModel;

  factory _ApiUserModel.fromJson(Map<String, dynamic> json) =
      _$_ApiUserModel.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get password;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String? get description;
  @override
  @JsonKey(name: 'user_role')
  String get userRole;
  @override
  String get confidentiality;
  @override
  @JsonKey(name: 'principal_picture_url')
  String get principalPictureUrl;
  @override
  @JsonKey(ignore: true)
  _$ApiUserModelCopyWith<_ApiUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
