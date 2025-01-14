// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prize_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GamePrizeModel {
  int get prize => throw _privateConstructorUsedError;

  /// Create a copy of GamePrizeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GamePrizeModelCopyWith<GamePrizeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamePrizeModelCopyWith<$Res> {
  factory $GamePrizeModelCopyWith(
          GamePrizeModel value, $Res Function(GamePrizeModel) then) =
      _$GamePrizeModelCopyWithImpl<$Res, GamePrizeModel>;
  @useResult
  $Res call({int prize});
}

/// @nodoc
class _$GamePrizeModelCopyWithImpl<$Res, $Val extends GamePrizeModel>
    implements $GamePrizeModelCopyWith<$Res> {
  _$GamePrizeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GamePrizeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prize = null,
  }) {
    return _then(_value.copyWith(
      prize: null == prize
          ? _value.prize
          : prize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GamePrizeModelImplCopyWith<$Res>
    implements $GamePrizeModelCopyWith<$Res> {
  factory _$$GamePrizeModelImplCopyWith(_$GamePrizeModelImpl value,
          $Res Function(_$GamePrizeModelImpl) then) =
      __$$GamePrizeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int prize});
}

/// @nodoc
class __$$GamePrizeModelImplCopyWithImpl<$Res>
    extends _$GamePrizeModelCopyWithImpl<$Res, _$GamePrizeModelImpl>
    implements _$$GamePrizeModelImplCopyWith<$Res> {
  __$$GamePrizeModelImplCopyWithImpl(
      _$GamePrizeModelImpl _value, $Res Function(_$GamePrizeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GamePrizeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prize = null,
  }) {
    return _then(_$GamePrizeModelImpl(
      prize: null == prize
          ? _value.prize
          : prize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GamePrizeModelImpl extends _GamePrizeModel {
  _$GamePrizeModelImpl({required this.prize}) : super._();

  @override
  final int prize;

  @override
  String toString() {
    return 'GamePrizeModel(prize: $prize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamePrizeModelImpl &&
            (identical(other.prize, prize) || other.prize == prize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prize);

  /// Create a copy of GamePrizeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GamePrizeModelImplCopyWith<_$GamePrizeModelImpl> get copyWith =>
      __$$GamePrizeModelImplCopyWithImpl<_$GamePrizeModelImpl>(
          this, _$identity);
}

abstract class _GamePrizeModel extends GamePrizeModel {
  factory _GamePrizeModel({required final int prize}) = _$GamePrizeModelImpl;
  _GamePrizeModel._() : super._();

  @override
  int get prize;

  /// Create a copy of GamePrizeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GamePrizeModelImplCopyWith<_$GamePrizeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
