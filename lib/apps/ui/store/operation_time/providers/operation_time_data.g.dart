// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_time_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreOperationTimeModelImpl _$$StoreOperationTimeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreOperationTimeModelImpl(
      openTime: json['openTime'] as String,
      openMinute: json['openMinute'] as String,
      closeTime: json['closeTime'] as String,
      closeMinute: json['closeMinute'] as String,
    );

Map<String, dynamic> _$$StoreOperationTimeModelImplToJson(
        _$StoreOperationTimeModelImpl instance) =>
    <String, dynamic>{
      'openTime': instance.openTime,
      'openMinute': instance.openMinute,
      'closeTime': instance.closeTime,
      'closeMinute': instance.closeMinute,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storeOperationTimeDataHash() =>
    r'2810818530276a7f724286bfea35677f6d498585';

/// See also [StoreOperationTimeData].
@ProviderFor(StoreOperationTimeData)
final storeOperationTimeDataProvider = AutoDisposeNotifierProvider<
    StoreOperationTimeData, StoreOperationTimeModel>.internal(
  StoreOperationTimeData.new,
  name: r'storeOperationTimeDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$storeOperationTimeDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$StoreOperationTimeData = AutoDisposeNotifier<StoreOperationTimeModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
