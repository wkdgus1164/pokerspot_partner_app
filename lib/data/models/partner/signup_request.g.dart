// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequestModel _$SignupRequestModelFromJson(Map<String, dynamic> json) =>
    SignupRequestModel(
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      identifier: json['identifier'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
      impUid: json['impUid'] as String,
    );

Map<String, dynamic> _$SignupRequestModelToJson(SignupRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'identifier': instance.identifier,
      'password': instance.password,
      'email': instance.email,
      'impUid': instance.impUid,
    };
