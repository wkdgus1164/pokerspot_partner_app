// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_form_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameUpdateDailyFormModelImpl _$$GameUpdateDailyFormModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GameUpdateDailyFormModelImpl(
      gameName: json['gameName'] as String,
      buyIn: (json['buyIn'] as num).toInt(),
      minEntry: (json['minEntry'] as num).toInt(),
      maxEntry: (json['maxEntry'] as num).toInt(),
      prize: (json['prize'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      firstGame: json['firstGame'] as bool,
      everyDay: json['everyDay'] as bool,
      isValid: json['isValid'] as bool,
    );

Map<String, dynamic> _$$GameUpdateDailyFormModelImplToJson(
        _$GameUpdateDailyFormModelImpl instance) =>
    <String, dynamic>{
      'gameName': instance.gameName,
      'buyIn': instance.buyIn,
      'minEntry': instance.minEntry,
      'maxEntry': instance.maxEntry,
      'prize': instance.prize,
      'duration': instance.duration,
      'firstGame': instance.firstGame,
      'everyDay': instance.everyDay,
      'isValid': instance.isValid,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gameUpdateDailyFormDataHash() =>
    r'd556a266177101b90c4fa8e1428de359495583ea';

/// See also [GameUpdateDailyFormData].
@ProviderFor(GameUpdateDailyFormData)
final gameUpdateDailyFormDataProvider = AutoDisposeNotifierProvider<
    GameUpdateDailyFormData, GameUpdateDailyFormModel>.internal(
  GameUpdateDailyFormData.new,
  name: r'gameUpdateDailyFormDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$gameUpdateDailyFormDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GameUpdateDailyFormData
    = AutoDisposeNotifier<GameUpdateDailyFormModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
