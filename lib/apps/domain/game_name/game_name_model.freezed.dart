// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_name_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameNameModel {
  String get gameName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameNameModelCopyWith<GameNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameNameModelCopyWith<$Res> {
  factory $GameNameModelCopyWith(
          GameNameModel value, $Res Function(GameNameModel) then) =
      _$GameNameModelCopyWithImpl<$Res, GameNameModel>;
  @useResult
  $Res call({String gameName});
}

/// @nodoc
class _$GameNameModelCopyWithImpl<$Res, $Val extends GameNameModel>
    implements $GameNameModelCopyWith<$Res> {
  _$GameNameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameName = null,
  }) {
    return _then(_value.copyWith(
      gameName: null == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameNameModelImplCopyWith<$Res>
    implements $GameNameModelCopyWith<$Res> {
  factory _$$GameNameModelImplCopyWith(
          _$GameNameModelImpl value, $Res Function(_$GameNameModelImpl) then) =
      __$$GameNameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String gameName});
}

/// @nodoc
class __$$GameNameModelImplCopyWithImpl<$Res>
    extends _$GameNameModelCopyWithImpl<$Res, _$GameNameModelImpl>
    implements _$$GameNameModelImplCopyWith<$Res> {
  __$$GameNameModelImplCopyWithImpl(
      _$GameNameModelImpl _value, $Res Function(_$GameNameModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameName = null,
  }) {
    return _then(_$GameNameModelImpl(
      gameName: null == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GameNameModelImpl extends _GameNameModel {
  _$GameNameModelImpl({required this.gameName}) : super._();

  @override
  final String gameName;

  @override
  String toString() {
    return 'GameNameModel(gameName: $gameName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameNameModelImpl &&
            (identical(other.gameName, gameName) ||
                other.gameName == gameName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameNameModelImplCopyWith<_$GameNameModelImpl> get copyWith =>
      __$$GameNameModelImplCopyWithImpl<_$GameNameModelImpl>(this, _$identity);
}

abstract class _GameNameModel extends GameNameModel {
  factory _GameNameModel({required final String gameName}) =
      _$GameNameModelImpl;
  _GameNameModel._() : super._();

  @override
  String get gameName;
  @override
  @JsonKey(ignore: true)
  _$$GameNameModelImplCopyWith<_$GameNameModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
