// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'affiliate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AffiliateModel _$AffiliateModelFromJson(Map<String, dynamic> json) =>
    AffiliateModel(
      uid: json['uid'] as String,
      name: json['name'] as String,
      originPrice: json['originPrice'] as int,
      price: json['price'] as int,
    );

Map<String, dynamic> _$AffiliateModelToJson(AffiliateModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'originPrice': instance.originPrice,
      'price': instance.price,
    };
