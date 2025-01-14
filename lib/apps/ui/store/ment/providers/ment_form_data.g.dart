// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ment_form_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreMentFormModelImpl _$$StoreMentFormModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreMentFormModelImpl(
      ment: json['ment'] as String,
    );

Map<String, dynamic> _$$StoreMentFormModelImplToJson(
        _$StoreMentFormModelImpl instance) =>
    <String, dynamic>{
      'ment': instance.ment,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storeMentFormDataHash() => r'5c94e719a5da6dd1884b29725cb6cb01a5988940';

/// See also [StoreMentFormData].
@ProviderFor(StoreMentFormData)
final storeMentFormDataProvider =
    AutoDisposeNotifierProvider<StoreMentFormData, StoreMentFormModel>.internal(
  StoreMentFormData.new,
  name: r'storeMentFormDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$storeMentFormDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$StoreMentFormData = AutoDisposeNotifier<StoreMentFormModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
