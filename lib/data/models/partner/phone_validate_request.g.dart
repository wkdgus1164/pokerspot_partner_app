// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_validate_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhoneValidateRequestModel _$PhoneValidateRequestModelFromJson(
        Map<String, dynamic> json) =>
    PhoneValidateRequestModel(
      impUid: json['impUid'] as String,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$PhoneValidateRequestModelToJson(
        PhoneValidateRequestModel instance) =>
    <String, dynamic>{
      'impUid': instance.impUid,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
    };
