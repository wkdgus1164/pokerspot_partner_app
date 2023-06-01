// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInRequestModel _$SignInRequestModelFromJson(Map<String, dynamic> json) =>
    SignInRequestModel(
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      identifier: json['identifier'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
      impUid: json['impUid'] as String,
    );

Map<String, dynamic> _$SignInRequestModelToJson(SignInRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'identifier': instance.identifier,
      'password': instance.password,
      'email': instance.email,
      'impUid': instance.impUid,
    };
