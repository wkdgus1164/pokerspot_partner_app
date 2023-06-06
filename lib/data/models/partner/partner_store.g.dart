// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartnerStoreModel _$PartnerStoreModelFromJson(Map<String, dynamic> json) =>
    PartnerStoreModel(
      uid: json['uid'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      status: json['status'] as String,
      isPaused: json['isPaused'] as bool,
      storeImages: (json['storeImages'] as List<dynamic>)
          .map((e) => StoreImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      storeAffiliate: json['storeAffiliate'] == null
          ? null
          : StoreAffiliateModel.fromJson(
              json['storeAffiliate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PartnerStoreModelToJson(PartnerStoreModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'type': instance.type,
      'status': instance.status,
      'isPaused': instance.isPaused,
      'storeImages': instance.storeImages,
      'storeAffiliate': instance.storeAffiliate,
    };

StoreImageModel _$StoreImageModelFromJson(Map<String, dynamic> json) =>
    StoreImageModel(
      url: json['url'] as String,
    );

Map<String, dynamic> _$StoreImageModelToJson(StoreImageModel instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

StoreAffiliateModel _$StoreAffiliateModelFromJson(Map<String, dynamic> json) =>
    StoreAffiliateModel(
      startAt: DateTime.parse(json['startAt'] as String),
      endAt: DateTime.parse(json['endAt'] as String),
    );

Map<String, dynamic> _$StoreAffiliateModelToJson(
        StoreAffiliateModel instance) =>
    <String, dynamic>{
      'startAt': instance.startAt.toIso8601String(),
      'endAt': instance.endAt.toIso8601String(),
    };
