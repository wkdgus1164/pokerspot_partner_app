// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_store_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateStoreModelCWProxy {
  CreateStoreModel bizNumber(String bizNumber);

  CreateStoreModel ownerName(String ownerName);

  CreateStoreModel bizStartYMD(String bizStartYMD);

  CreateStoreModel name(String name);

  CreateStoreModel address(String address);

  CreateStoreModel addressDetail(String addressDetail);

  CreateStoreModel lat(double lat);

  CreateStoreModel lng(double lng);

  CreateStoreModel bizCategory(String bizCategory);

  CreateStoreModel bizCategoryDetail(String bizCategoryDetail);

  CreateStoreModel storeImages(List<StoreImageModel> storeImages);

  CreateStoreModel openTime(String openTime);

  CreateStoreModel closeTime(String? closeTime);

  CreateStoreModel type(String type);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateStoreModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateStoreModel(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateStoreModel call({
    String? bizNumber,
    String? ownerName,
    String? bizStartYMD,
    String? name,
    String? address,
    String? addressDetail,
    double? lat,
    double? lng,
    String? bizCategory,
    String? bizCategoryDetail,
    List<StoreImageModel>? storeImages,
    String? openTime,
    String? closeTime,
    String? type,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreateStoreModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreateStoreModel.copyWith.fieldName(...)`
class _$CreateStoreModelCWProxyImpl implements _$CreateStoreModelCWProxy {
  const _$CreateStoreModelCWProxyImpl(this._value);

  final CreateStoreModel _value;

  @override
  CreateStoreModel bizNumber(String bizNumber) => this(bizNumber: bizNumber);

  @override
  CreateStoreModel ownerName(String ownerName) => this(ownerName: ownerName);

  @override
  CreateStoreModel bizStartYMD(String bizStartYMD) =>
      this(bizStartYMD: bizStartYMD);

  @override
  CreateStoreModel name(String name) => this(name: name);

  @override
  CreateStoreModel address(String address) => this(address: address);

  @override
  CreateStoreModel addressDetail(String addressDetail) =>
      this(addressDetail: addressDetail);

  @override
  CreateStoreModel lat(double lat) => this(lat: lat);

  @override
  CreateStoreModel lng(double lng) => this(lng: lng);

  @override
  CreateStoreModel bizCategory(String bizCategory) =>
      this(bizCategory: bizCategory);

  @override
  CreateStoreModel bizCategoryDetail(String bizCategoryDetail) =>
      this(bizCategoryDetail: bizCategoryDetail);

  @override
  CreateStoreModel storeImages(List<StoreImageModel> storeImages) =>
      this(storeImages: storeImages);

  @override
  CreateStoreModel openTime(String openTime) => this(openTime: openTime);

  @override
  CreateStoreModel closeTime(String? closeTime) => this(closeTime: closeTime);

  @override
  CreateStoreModel type(String type) => this(type: type);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateStoreModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateStoreModel(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateStoreModel call({
    Object? bizNumber = const $CopyWithPlaceholder(),
    Object? ownerName = const $CopyWithPlaceholder(),
    Object? bizStartYMD = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? address = const $CopyWithPlaceholder(),
    Object? addressDetail = const $CopyWithPlaceholder(),
    Object? lat = const $CopyWithPlaceholder(),
    Object? lng = const $CopyWithPlaceholder(),
    Object? bizCategory = const $CopyWithPlaceholder(),
    Object? bizCategoryDetail = const $CopyWithPlaceholder(),
    Object? storeImages = const $CopyWithPlaceholder(),
    Object? openTime = const $CopyWithPlaceholder(),
    Object? closeTime = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return CreateStoreModel(
      bizNumber: bizNumber == const $CopyWithPlaceholder() || bizNumber == null
          ? _value.bizNumber
          // ignore: cast_nullable_to_non_nullable
          : bizNumber as String,
      ownerName: ownerName == const $CopyWithPlaceholder() || ownerName == null
          ? _value.ownerName
          // ignore: cast_nullable_to_non_nullable
          : ownerName as String,
      bizStartYMD:
          bizStartYMD == const $CopyWithPlaceholder() || bizStartYMD == null
              ? _value.bizStartYMD
              // ignore: cast_nullable_to_non_nullable
              : bizStartYMD as String,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      address: address == const $CopyWithPlaceholder() || address == null
          ? _value.address
          // ignore: cast_nullable_to_non_nullable
          : address as String,
      addressDetail:
          addressDetail == const $CopyWithPlaceholder() || addressDetail == null
              ? _value.addressDetail
              // ignore: cast_nullable_to_non_nullable
              : addressDetail as String,
      lat: lat == const $CopyWithPlaceholder() || lat == null
          ? _value.lat
          // ignore: cast_nullable_to_non_nullable
          : lat as double,
      lng: lng == const $CopyWithPlaceholder() || lng == null
          ? _value.lng
          // ignore: cast_nullable_to_non_nullable
          : lng as double,
      bizCategory:
          bizCategory == const $CopyWithPlaceholder() || bizCategory == null
              ? _value.bizCategory
              // ignore: cast_nullable_to_non_nullable
              : bizCategory as String,
      bizCategoryDetail: bizCategoryDetail == const $CopyWithPlaceholder() ||
              bizCategoryDetail == null
          ? _value.bizCategoryDetail
          // ignore: cast_nullable_to_non_nullable
          : bizCategoryDetail as String,
      storeImages:
          storeImages == const $CopyWithPlaceholder() || storeImages == null
              ? _value.storeImages
              // ignore: cast_nullable_to_non_nullable
              : storeImages as List<StoreImageModel>,
      openTime: openTime == const $CopyWithPlaceholder() || openTime == null
          ? _value.openTime
          // ignore: cast_nullable_to_non_nullable
          : openTime as String,
      closeTime: closeTime == const $CopyWithPlaceholder()
          ? _value.closeTime
          // ignore: cast_nullable_to_non_nullable
          : closeTime as String?,
      type: type == const $CopyWithPlaceholder() || type == null
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as String,
    );
  }
}

extension $CreateStoreModelCopyWith on CreateStoreModel {
  /// Returns a callable class that can be used as follows: `instanceOfCreateStoreModel.copyWith(...)` or like so:`instanceOfCreateStoreModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateStoreModelCWProxy get copyWith => _$CreateStoreModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateStoreRequestModel _$CreateStoreRequestModelFromJson(
        Map<String, dynamic> json) =>
    CreateStoreRequestModel(
      store: CreateStoreModel.fromJson(json['store'] as Map<String, dynamic>),
      mttGames: (json['mttGames'] as List<dynamic>?)
              ?.map((e) => MttGameModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CreateStoreRequestModelToJson(
        CreateStoreRequestModel instance) =>
    <String, dynamic>{
      'store': instance.store.toJson(),
      'mttGames': instance.mttGames.map((e) => e.toJson()).toList(),
    };

CreateStoreModel _$CreateStoreModelFromJson(Map<String, dynamic> json) =>
    CreateStoreModel(
      bizNumber: json['bizNumber'] as String? ?? '',
      ownerName: json['ownerName'] as String? ?? '',
      bizStartYMD: json['bizStartYMD'] as String? ?? '',
      name: json['name'] as String? ?? '',
      address: json['address'] as String? ?? '',
      addressDetail: json['addressDetail'] as String? ?? '',
      lat: (json['lat'] as num?)?.toDouble() ?? 0,
      lng: (json['lng'] as num?)?.toDouble() ?? 0,
      bizCategory: json['bizCategory'] as String? ?? '',
      bizCategoryDetail: json['bizCategoryDetail'] as String? ?? '',
      storeImages: (json['storeImages'] as List<dynamic>?)
              ?.map((e) => StoreImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      openTime: json['openTime'] as String? ?? '00:00',
      closeTime: json['closeTime'] as String?,
      type: json['type'] as String? ?? 'MTT',
    );

Map<String, dynamic> _$CreateStoreModelToJson(CreateStoreModel instance) =>
    <String, dynamic>{
      'bizNumber': instance.bizNumber,
      'ownerName': instance.ownerName,
      'bizStartYMD': instance.bizStartYMD,
      'name': instance.name,
      'address': instance.address,
      'addressDetail': instance.addressDetail,
      'lat': instance.lat,
      'lng': instance.lng,
      'bizCategory': instance.bizCategory,
      'bizCategoryDetail': instance.bizCategoryDetail,
      'storeImages': instance.storeImages.map((e) => e.toJson()).toList(),
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'type': instance.type,
    };
