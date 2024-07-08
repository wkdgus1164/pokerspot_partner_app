// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'min_reward_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameMinRewardModel {
  int get minReward => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameMinRewardModelCopyWith<GameMinRewardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameMinRewardModelCopyWith<$Res> {
  factory $GameMinRewardModelCopyWith(
          GameMinRewardModel value, $Res Function(GameMinRewardModel) then) =
      _$GameMinRewardModelCopyWithImpl<$Res, GameMinRewardModel>;
  @useResult
  $Res call({int minReward});
}

/// @nodoc
class _$GameMinRewardModelCopyWithImpl<$Res, $Val extends GameMinRewardModel>
    implements $GameMinRewardModelCopyWith<$Res> {
  _$GameMinRewardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minReward = null,
  }) {
    return _then(_value.copyWith(
      minReward: null == minReward
          ? _value.minReward
          : minReward // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameMinRewardModelImplCopyWith<$Res>
    implements $GameMinRewardModelCopyWith<$Res> {
  factory _$$GameMinRewardModelImplCopyWith(_$GameMinRewardModelImpl value,
          $Res Function(_$GameMinRewardModelImpl) then) =
      __$$GameMinRewardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int minReward});
}

/// @nodoc
class __$$GameMinRewardModelImplCopyWithImpl<$Res>
    extends _$GameMinRewardModelCopyWithImpl<$Res, _$GameMinRewardModelImpl>
    implements _$$GameMinRewardModelImplCopyWith<$Res> {
  __$$GameMinRewardModelImplCopyWithImpl(_$GameMinRewardModelImpl _value,
      $Res Function(_$GameMinRewardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minReward = null,
  }) {
    return _then(_$GameMinRewardModelImpl(
      minReward: null == minReward
          ? _value.minReward
          : minReward // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameMinRewardModelImpl extends _GameMinRewardModel {
  _$GameMinRewardModelImpl({required this.minReward}) : super._();

  @override
  final int minReward;

  @override
  String toString() {
    return 'GameMinRewardModel(minReward: $minReward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameMinRewardModelImpl &&
            (identical(other.minReward, minReward) ||
                other.minReward == minReward));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minReward);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameMinRewardModelImplCopyWith<_$GameMinRewardModelImpl> get copyWith =>
      __$$GameMinRewardModelImplCopyWithImpl<_$GameMinRewardModelImpl>(
          this, _$identity);
}

abstract class _GameMinRewardModel extends GameMinRewardModel {
  factory _GameMinRewardModel({required final int minReward}) =
      _$GameMinRewardModelImpl;
  _GameMinRewardModel._() : super._();

  @override
  int get minReward;
  @override
  @JsonKey(ignore: true)
  _$$GameMinRewardModelImplCopyWith<_$GameMinRewardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
