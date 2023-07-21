// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mtt_game.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MttGameModelCWProxy {
  MttGameModel uid(String uid);

  MttGameModel name(String name);

  MttGameModel type(TonerType type);

  MttGameModel entryPrice(int entryPrice);

  MttGameModel entryMin(int entryMin);

  MttGameModel entryMax(int? entryMax);

  MttGameModel prize(String prize);

  MttGameModel targetMttName(String targetMttName);

  MttGameModel gtdMinReward(int gtdMinReward);

  MttGameModel isDaily(bool isDaily);

  MttGameModel isToday(bool isToday);

  MttGameModel isRealTime(bool isRealTime);

  MttGameModel priority(int? priority);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MttGameModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MttGameModel(...).copyWith(id: 12, name: "My name")
  /// ````
  MttGameModel call({
    String? uid,
    String? name,
    TonerType? type,
    int? entryPrice,
    int? entryMin,
    int? entryMax,
    String? prize,
    String? targetMttName,
    int? gtdMinReward,
    bool? isDaily,
    bool? isToday,
    bool? isRealTime,
    int? priority,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMttGameModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMttGameModel.copyWith.fieldName(...)`
class _$MttGameModelCWProxyImpl implements _$MttGameModelCWProxy {
  const _$MttGameModelCWProxyImpl(this._value);

  final MttGameModel _value;

  @override
  MttGameModel uid(String uid) => this(uid: uid);

  @override
  MttGameModel name(String name) => this(name: name);

  @override
  MttGameModel type(TonerType type) => this(type: type);

  @override
  MttGameModel entryPrice(int entryPrice) => this(entryPrice: entryPrice);

  @override
  MttGameModel entryMin(int entryMin) => this(entryMin: entryMin);

  @override
  MttGameModel entryMax(int? entryMax) => this(entryMax: entryMax);

  @override
  MttGameModel prize(String prize) => this(prize: prize);

  @override
  MttGameModel targetMttName(String targetMttName) =>
      this(targetMttName: targetMttName);

  @override
  MttGameModel gtdMinReward(int gtdMinReward) =>
      this(gtdMinReward: gtdMinReward);

  @override
  MttGameModel isDaily(bool isDaily) => this(isDaily: isDaily);

  @override
  MttGameModel isToday(bool isToday) => this(isToday: isToday);

  @override
  MttGameModel isRealTime(bool isRealTime) => this(isRealTime: isRealTime);

  @override
  MttGameModel priority(int? priority) => this(priority: priority);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MttGameModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MttGameModel(...).copyWith(id: 12, name: "My name")
  /// ````
  MttGameModel call({
    Object? uid = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? entryPrice = const $CopyWithPlaceholder(),
    Object? entryMin = const $CopyWithPlaceholder(),
    Object? entryMax = const $CopyWithPlaceholder(),
    Object? prize = const $CopyWithPlaceholder(),
    Object? targetMttName = const $CopyWithPlaceholder(),
    Object? gtdMinReward = const $CopyWithPlaceholder(),
    Object? isDaily = const $CopyWithPlaceholder(),
    Object? isToday = const $CopyWithPlaceholder(),
    Object? isRealTime = const $CopyWithPlaceholder(),
    Object? priority = const $CopyWithPlaceholder(),
  }) {
    return MttGameModel(
      uid: uid == const $CopyWithPlaceholder() || uid == null
          ? _value.uid
          // ignore: cast_nullable_to_non_nullable
          : uid as String,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
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
      entryMax: entryMax == const $CopyWithPlaceholder()
          ? _value.entryMax
          // ignore: cast_nullable_to_non_nullable
          : entryMax as int?,
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
      isToday: isToday == const $CopyWithPlaceholder() || isToday == null
          ? _value.isToday
          // ignore: cast_nullable_to_non_nullable
          : isToday as bool,
      isRealTime:
          isRealTime == const $CopyWithPlaceholder() || isRealTime == null
              ? _value.isRealTime
              // ignore: cast_nullable_to_non_nullable
              : isRealTime as bool,
      priority: priority == const $CopyWithPlaceholder()
          ? _value.priority
          // ignore: cast_nullable_to_non_nullable
          : priority as int?,
    );
  }
}

extension $MttGameModelCopyWith on MttGameModel {
  /// Returns a callable class that can be used as follows: `instanceOfMttGameModel.copyWith(...)` or like so:`instanceOfMttGameModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MttGameModelCWProxy get copyWith => _$MttGameModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MttGameModel _$MttGameModelFromJson(Map<String, dynamic> json) => MttGameModel(
      uid: json['uid'] as String? ?? '',
      name: json['name'] as String? ?? '',
      type: $enumDecodeNullable(_$TonerTypeEnumMap, json['type']) ??
          TonerType.daily,
      entryPrice: json['entryPrice'] as int? ?? 10000,
      entryMin: json['entryMin'] as int? ?? 1,
      entryMax: json['entryMax'] as int?,
      prize: json['prize'] as String? ?? '100%',
      targetMttName: json['targetMttName'] as String? ?? '',
      gtdMinReward: json['gtdMinReward'] as int? ?? 1000000,
      isDaily: json['isDaily'] as bool? ?? false,
      isToday: json['isToday'] as bool? ?? false,
      isRealTime: json['isRealTime'] as bool? ?? false,
      priority: json['priority'] as int?,
    );

Map<String, dynamic> _$MttGameModelToJson(MttGameModel instance) =>
    <String, dynamic>{
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
