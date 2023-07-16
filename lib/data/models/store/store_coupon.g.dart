// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreCouponModel _$StoreCouponModelFromJson(Map<String, dynamic> json) =>
    StoreCouponModel(
      uid: json['uid'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      image: json['image'] as String,
      totalAmount: json['totalAmount'] as int,
      usedAmount: json['usedAmount'] as int,
      remainAmount: json['remainAmount'] as int,
    );

Map<String, dynamic> _$StoreCouponModelToJson(StoreCouponModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'image': instance.image,
      'totalAmount': instance.totalAmount,
      'usedAmount': instance.usedAmount,
      'remainAmount': instance.remainAmount,
    };
