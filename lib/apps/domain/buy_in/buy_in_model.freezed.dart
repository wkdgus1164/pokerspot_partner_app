// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buy_in_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameBuyInModel {
  int get buyIn => throw _privateConstructorUsedError;

  /// Create a copy of GameBuyInModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameBuyInModelCopyWith<GameBuyInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameBuyInModelCopyWith<$Res> {
  factory $GameBuyInModelCopyWith(
          GameBuyInModel value, $Res Function(GameBuyInModel) then) =
      _$GameBuyInModelCopyWithImpl<$Res, GameBuyInModel>;
  @useResult
  $Res call({int buyIn});
}

/// @nodoc
class _$GameBuyInModelCopyWithImpl<$Res, $Val extends GameBuyInModel>
    implements $GameBuyInModelCopyWith<$Res> {
  _$GameBuyInModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameBuyInModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyIn = null,
  }) {
    return _then(_value.copyWith(
      buyIn: null == buyIn
          ? _value.buyIn
          : buyIn // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$gameBuyInModelImplCopyWith<$Res>
    implements $GameBuyInModelCopyWith<$Res> {
  factory _$$gameBuyInModelImplCopyWith(_$gameBuyInModelImpl value,
          $Res Function(_$gameBuyInModelImpl) then) =
      __$$gameBuyInModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int buyIn});
}

/// @nodoc
class __$$gameBuyInModelImplCopyWithImpl<$Res>
    extends _$GameBuyInModelCopyWithImpl<$Res, _$gameBuyInModelImpl>
    implements _$$gameBuyInModelImplCopyWith<$Res> {
  __$$gameBuyInModelImplCopyWithImpl(
      _$gameBuyInModelImpl _value, $Res Function(_$gameBuyInModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameBuyInModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyIn = null,
  }) {
    return _then(_$gameBuyInModelImpl(
      buyIn: null == buyIn
          ? _value.buyIn
          : buyIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$gameBuyInModelImpl extends _gameBuyInModel {
  _$gameBuyInModelImpl({required this.buyIn}) : super._();

  @override
  final int buyIn;

  @override
  String toString() {
    return 'GameBuyInModel(buyIn: $buyIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$gameBuyInModelImpl &&
            (identical(other.buyIn, buyIn) || other.buyIn == buyIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, buyIn);

  /// Create a copy of GameBuyInModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$gameBuyInModelImplCopyWith<_$gameBuyInModelImpl> get copyWith =>
      __$$gameBuyInModelImplCopyWithImpl<_$gameBuyInModelImpl>(
          this, _$identity);
}

abstract class _gameBuyInModel extends GameBuyInModel {
  factory _gameBuyInModel({required final int buyIn}) = _$gameBuyInModelImpl;
  _gameBuyInModel._() : super._();

  @override
  int get buyIn;

  /// Create a copy of GameBuyInModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$gameBuyInModelImplCopyWith<_$gameBuyInModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
