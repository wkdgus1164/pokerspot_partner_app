// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartnerModel _$PartnerModelFromJson(Map<String, dynamic> json) => PartnerModel(
      uid: json['uid'] as String,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      identifier: json['identifier'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$PartnerModelToJson(PartnerModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'identifier': instance.identifier,
      'email': instance.email,
    };
