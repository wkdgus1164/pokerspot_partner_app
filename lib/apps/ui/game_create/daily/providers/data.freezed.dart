// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameCreateDailyModel {
  String get gameName => throw _privateConstructorUsedError;
  int get buyIn => throw _privateConstructorUsedError;
  int get minEntry => throw _privateConstructorUsedError;
  int get maxEntry => throw _privateConstructorUsedError;
  int get prizeRatio => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  bool get firstGame => throw _privateConstructorUsedError;
  bool get dailyGame => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameCreateDailyModelCopyWith<GameCreateDailyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCreateDailyModelCopyWith<$Res> {
  factory $GameCreateDailyModelCopyWith(GameCreateDailyModel value,
          $Res Function(GameCreateDailyModel) then) =
      _$GameCreateDailyModelCopyWithImpl<$Res, GameCreateDailyModel>;
  @useResult
  $Res call(
      {String gameName,
      int buyIn,
      int minEntry,
      int maxEntry,
      int prizeRatio,
      int duration,
      bool firstGame,
      bool dailyGame});
}

/// @nodoc
class _$GameCreateDailyModelCopyWithImpl<$Res,
        $Val extends GameCreateDailyModel>
    implements $GameCreateDailyModelCopyWith<$Res> {
  _$GameCreateDailyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameName = null,
    Object? buyIn = null,
    Object? minEntry = null,
    Object? maxEntry = null,
    Object? prizeRatio = null,
    Object? duration = null,
    Object? firstGame = null,
    Object? dailyGame = null,
  }) {
    return _then(_value.copyWith(
      gameName: null == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      buyIn: null == buyIn
          ? _value.buyIn
          : buyIn // ignore: cast_nullable_to_non_nullable
              as int,
      minEntry: null == minEntry
          ? _value.minEntry
          : minEntry // ignore: cast_nullable_to_non_nullable
              as int,
      maxEntry: null == maxEntry
          ? _value.maxEntry
          : maxEntry // ignore: cast_nullable_to_non_nullable
              as int,
      prizeRatio: null == prizeRatio
          ? _value.prizeRatio
          : prizeRatio // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      firstGame: null == firstGame
          ? _value.firstGame
          : firstGame // ignore: cast_nullable_to_non_nullable
              as bool,
      dailyGame: null == dailyGame
          ? _value.dailyGame
          : dailyGame // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameCreateDailyModelImplCopyWith<$Res>
    implements $GameCreateDailyModelCopyWith<$Res> {
  factory _$$GameCreateDailyModelImplCopyWith(_$GameCreateDailyModelImpl value,
          $Res Function(_$GameCreateDailyModelImpl) then) =
      __$$GameCreateDailyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String gameName,
      int buyIn,
      int minEntry,
      int maxEntry,
      int prizeRatio,
      int duration,
      bool firstGame,
      bool dailyGame});
}

/// @nodoc
class __$$GameCreateDailyModelImplCopyWithImpl<$Res>
    extends _$GameCreateDailyModelCopyWithImpl<$Res, _$GameCreateDailyModelImpl>
    implements _$$GameCreateDailyModelImplCopyWith<$Res> {
  __$$GameCreateDailyModelImplCopyWithImpl(_$GameCreateDailyModelImpl _value,
      $Res Function(_$GameCreateDailyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameName = null,
    Object? buyIn = null,
    Object? minEntry = null,
    Object? maxEntry = null,
    Object? prizeRatio = null,
    Object? duration = null,
    Object? firstGame = null,
    Object? dailyGame = null,
  }) {
    return _then(_$GameCreateDailyModelImpl(
      gameName: null == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      buyIn: null == buyIn
          ? _value.buyIn
          : buyIn // ignore: cast_nullable_to_non_nullable
              as int,
      minEntry: null == minEntry
          ? _value.minEntry
          : minEntry // ignore: cast_nullable_to_non_nullable
              as int,
      maxEntry: null == maxEntry
          ? _value.maxEntry
          : maxEntry // ignore: cast_nullable_to_non_nullable
              as int,
      prizeRatio: null == prizeRatio
          ? _value.prizeRatio
          : prizeRatio // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      firstGame: null == firstGame
          ? _value.firstGame
          : firstGame // ignore: cast_nullable_to_non_nullable
              as bool,
      dailyGame: null == dailyGame
          ? _value.dailyGame
          : dailyGame // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GameCreateDailyModelImpl extends _GameCreateDailyModel {
  _$GameCreateDailyModelImpl(
      {required this.gameName,
      required this.buyIn,
      required this.minEntry,
      required this.maxEntry,
      required this.prizeRatio,
      required this.duration,
      required this.firstGame,
      required this.dailyGame})
      : super._();

  @override
  final String gameName;
  @override
  final int buyIn;
  @override
  final int minEntry;
  @override
  final int maxEntry;
  @override
  final int prizeRatio;
  @override
  final int duration;
  @override
  final bool firstGame;
  @override
  final bool dailyGame;

  @override
  String toString() {
    return 'GameCreateDailyModel(gameName: $gameName, buyIn: $buyIn, minEntry: $minEntry, maxEntry: $maxEntry, prizeRatio: $prizeRatio, duration: $duration, firstGame: $firstGame, dailyGame: $dailyGame)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameCreateDailyModelImpl &&
            (identical(other.gameName, gameName) ||
                other.gameName == gameName) &&
            (identical(other.buyIn, buyIn) || other.buyIn == buyIn) &&
            (identical(other.minEntry, minEntry) ||
                other.minEntry == minEntry) &&
            (identical(other.maxEntry, maxEntry) ||
                other.maxEntry == maxEntry) &&
            (identical(other.prizeRatio, prizeRatio) ||
                other.prizeRatio == prizeRatio) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.firstGame, firstGame) ||
                other.firstGame == firstGame) &&
            (identical(other.dailyGame, dailyGame) ||
                other.dailyGame == dailyGame));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameName, buyIn, minEntry,
      maxEntry, prizeRatio, duration, firstGame, dailyGame);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameCreateDailyModelImplCopyWith<_$GameCreateDailyModelImpl>
      get copyWith =>
          __$$GameCreateDailyModelImplCopyWithImpl<_$GameCreateDailyModelImpl>(
              this, _$identity);
}

abstract class _GameCreateDailyModel extends GameCreateDailyModel {
  factory _GameCreateDailyModel(
      {required final String gameName,
      required final int buyIn,
      required final int minEntry,
      required final int maxEntry,
      required final int prizeRatio,
      required final int duration,
      required final bool firstGame,
      required final bool dailyGame}) = _$GameCreateDailyModelImpl;
  _GameCreateDailyModel._() : super._();

  @override
  String get gameName;
  @override
  int get buyIn;
  @override
  int get minEntry;
  @override
  int get maxEntry;
  @override
  int get prizeRatio;
  @override
  int get duration;
  @override
  bool get firstGame;
  @override
  bool get dailyGame;
  @override
  @JsonKey(ignore: true)
  _$$GameCreateDailyModelImplCopyWith<_$GameCreateDailyModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
