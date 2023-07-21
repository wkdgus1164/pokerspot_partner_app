// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_game.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateGameModelCWProxy {
  CreateGameModel storeUid(String storeUid);

  CreateGameModel type(TonerType type);

  CreateGameModel entryPrice(int entryPrice);

  CreateGameModel entryMin(int entryMin);

  CreateGameModel entryMax(int entryMax);

  CreateGameModel prize(String prize);

  CreateGameModel targetMttName(String targetMttName);

  CreateGameModel gtdMinReward(int gtdMinReward);

  CreateGameModel isDaily(bool isDaily);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateGameModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateGameModel(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateGameModel call({
    String? storeUid,
    TonerType? type,
    int? entryPrice,
    int? entryMin,
    int? entryMax,
    String? prize,
    String? targetMttName,
    int? gtdMinReward,
    bool? isDaily,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreateGameModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreateGameModel.copyWith.fieldName(...)`
class _$CreateGameModelCWProxyImpl implements _$CreateGameModelCWProxy {
  const _$CreateGameModelCWProxyImpl(this._value);

  final CreateGameModel _value;

  @override
  CreateGameModel storeUid(String storeUid) => this(storeUid: storeUid);

  @override
  CreateGameModel type(TonerType type) => this(type: type);

  @override
  CreateGameModel entryPrice(int entryPrice) => this(entryPrice: entryPrice);

  @override
  CreateGameModel entryMin(int entryMin) => this(entryMin: entryMin);

  @override
  CreateGameModel entryMax(int entryMax) => this(entryMax: entryMax);

  @override
  CreateGameModel prize(String prize) => this(prize: prize);

  @override
  CreateGameModel targetMttName(String targetMttName) =>
      this(targetMttName: targetMttName);

  @override
  CreateGameModel gtdMinReward(int gtdMinReward) =>
      this(gtdMinReward: gtdMinReward);

  @override
  CreateGameModel isDaily(bool isDaily) => this(isDaily: isDaily);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateGameModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateGameModel(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateGameModel call({
    Object? storeUid = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? entryPrice = const $CopyWithPlaceholder(),
    Object? entryMin = const $CopyWithPlaceholder(),
    Object? entryMax = const $CopyWithPlaceholder(),
    Object? prize = const $CopyWithPlaceholder(),
    Object? targetMttName = const $CopyWithPlaceholder(),
    Object? gtdMinReward = const $CopyWithPlaceholder(),
    Object? isDaily = const $CopyWithPlaceholder(),
  }) {
    return CreateGameModel(
      storeUid: storeUid == const $CopyWithPlaceholder() || storeUid == null
          ? _value.storeUid
          // ignore: cast_nullable_to_non_nullable
          : storeUid as String,
      type: type == const $CopyWithPlaceholder() || type == null
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as TonerType,
      entryPrice:
          entryPrice == const $CopyWithPlaceholder() || entryPrice == null
              ? _value.entryPrice
              // ignore: cast_nullable_to_non_nullable
              : entryPrice as int,
      entryMin: entryMin == const $CopyWithPlaceholder() || entryMin == null
          ? _value.entryMin
          // ignore: cast_nullable_to_non_nullable
          : entryMin as int,
      entryMax: entryMax == const $CopyWithPlaceholder() || entryMax == null
          ? _value.entryMax
          // ignore: cast_nullable_to_non_nullable
          : entryMax as int,
      prize: prize == const $CopyWithPlaceholder() || prize == null
          ? _value.prize
          // ignore: cast_nullable_to_non_nullable
          : prize as String,
      targetMttName:
          targetMttName == const $CopyWithPlaceholder() || targetMttName == null
              ? _value.targetMttName
              // ignore: cast_nullable_to_non_nullable
              : targetMttName as String,
      gtdMinReward:
          gtdMinReward == const $CopyWithPlaceholder() || gtdMinReward == null
              ? _value.gtdMinReward
              // ignore: cast_nullable_to_non_nullable
              : gtdMinReward as int,
      isDaily: isDaily == const $CopyWithPlaceholder() || isDaily == null
          ? _value.isDaily
          // ignore: cast_nullable_to_non_nullable
          : isDaily as bool,
    );
  }
}

extension $CreateGameModelCopyWith on CreateGameModel {
  /// Returns a callable class that can be used as follows: `instanceOfCreateGameModel.copyWith(...)` or like so:`instanceOfCreateGameModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateGameModelCWProxy get copyWith => _$CreateGameModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGameModel _$CreateGameModelFromJson(Map<String, dynamic> json) =>
    CreateGameModel(
      storeUid: json['storeUid'] as String,
      type: $enumDecode(_$TonerTypeEnumMap, json['type']),
      entryPrice: json['entryPrice'] as int,
      entryMin: json['entryMin'] as int,
      entryMax: json['entryMax'] as int,
      prize: json['prize'] as String,
      targetMttName: json['targetMttName'] as String,
      gtdMinReward: json['gtdMinReward'] as int,
      isDaily: json['isDaily'] as bool,
    );

Map<String, dynamic> _$CreateGameModelToJson(CreateGameModel instance) =>
    <String, dynamic>{
      'storeUid': instance.storeUid,
      'type': _$TonerTypeEnumMap[instance.type]!,
      'entryPrice': instance.entryPrice,
      'entryMin': instance.entryMin,
      'entryMax': instance.entryMax,
      'prize': instance.prize,
      'targetMttName': instance.targetMttName,
      'gtdMinReward': instance.gtdMinReward,
      'isDaily': instance.isDaily,
    };

const _$TonerTypeEnumMap = {
  TonerType.daily: 'DAILY',
  TonerType.seed: 'SEED',
  TonerType.gtd: 'GTD',
  TonerType.primary: 'PRIMARY',
  TonerType.secondary: 'SECONDARY',
};
