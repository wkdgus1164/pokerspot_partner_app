// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameDurationModel {
  int get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameDurationModelCopyWith<GameDurationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDurationModelCopyWith<$Res> {
  factory $GameDurationModelCopyWith(
          GameDurationModel value, $Res Function(GameDurationModel) then) =
      _$GameDurationModelCopyWithImpl<$Res, GameDurationModel>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class _$GameDurationModelCopyWithImpl<$Res, $Val extends GameDurationModel>
    implements $GameDurationModelCopyWith<$Res> {
  _$GameDurationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameDurationModelImplCopyWith<$Res>
    implements $GameDurationModelCopyWith<$Res> {
  factory _$$GameDurationModelImplCopyWith(_$GameDurationModelImpl value,
          $Res Function(_$GameDurationModelImpl) then) =
      __$$GameDurationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$GameDurationModelImplCopyWithImpl<$Res>
    extends _$GameDurationModelCopyWithImpl<$Res, _$GameDurationModelImpl>
    implements _$$GameDurationModelImplCopyWith<$Res> {
  __$$GameDurationModelImplCopyWithImpl(_$GameDurationModelImpl _value,
      $Res Function(_$GameDurationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$GameDurationModelImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameDurationModelImpl extends _GameDurationModel {
  _$GameDurationModelImpl({required this.duration}) : super._();

  @override
  final int duration;

  @override
  String toString() {
    return 'GameDurationModel(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameDurationModelImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameDurationModelImplCopyWith<_$GameDurationModelImpl> get copyWith =>
      __$$GameDurationModelImplCopyWithImpl<_$GameDurationModelImpl>(
          this, _$identity);
}

abstract class _GameDurationModel extends GameDurationModel {
  factory _GameDurationModel({required final int duration}) =
      _$GameDurationModelImpl;
  _GameDurationModel._() : super._();

  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$GameDurationModelImplCopyWith<_$GameDurationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
