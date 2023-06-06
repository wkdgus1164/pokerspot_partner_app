// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biz_validate_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BizValidateRequestModel _$BizValidateRequestModelFromJson(
        Map<String, dynamic> json) =>
    BizValidateRequestModel(
      bizNumber: json['bizNumber'] as String,
      name: json['name'] as String,
      bizStartYMD: json['bizStartYMD'] as String,
    );

Map<String, dynamic> _$BizValidateRequestModelToJson(
        BizValidateRequestModel instance) =>
    <String, dynamic>{
      'bizNumber': instance.bizNumber,
      'name': instance.name,
      'bizStartYMD': instance.bizStartYMD,
    };
