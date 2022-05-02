// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiUserModel _$$_ApiUserModelFromJson(Map<String, dynamic> json) =>
    _$_ApiUserModel(
      id: json['id'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      description: json['description'] as String?,
      userRole: json['user_role'] as String,
      confidentiality: json['confidentiality'] as String,
      principalPictureUrl: json['principal_picture_url'] as String?,
    );

Map<String, dynamic> _$$_ApiUserModelToJson(_$_ApiUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'description': instance.description,
      'user_role': instance.userRole,
      'confidentiality': instance.confidentiality,
      'principal_picture_url': instance.principalPictureUrl,
    };
