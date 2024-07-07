// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameCreateDailyEntryModelImpl _$$GameCreateDailyEntryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GameCreateDailyEntryModelImpl(
      entry: (json['entry'] as num).toInt(),
    );

Map<String, dynamic> _$$GameCreateDailyEntryModelImplToJson(
        _$GameCreateDailyEntryModelImpl instance) =>
    <String, dynamic>{
      'entry': instance.entry,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gameCreateDailyEntryDataHash() =>
    r'cd3cae7aab502674f91dc838bcd872a0e37bb1b7';

/// See also [GameCreateDailyEntryData].
@ProviderFor(GameCreateDailyEntryData)
final gameCreateDailyEntryDataProvider = AutoDisposeNotifierProvider<
    GameCreateDailyEntryData, GameCreateDailyEntryModel>.internal(
  GameCreateDailyEntryData.new,
  name: r'gameCreateDailyEntryDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$gameCreateDailyEntryDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GameCreateDailyEntryData
    = AutoDisposeNotifier<GameCreateDailyEntryModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
