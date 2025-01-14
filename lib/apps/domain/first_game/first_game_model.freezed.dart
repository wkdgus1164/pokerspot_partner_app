// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'first_game_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameFirstGameModel {
  bool get firstGame => throw _privateConstructorUsedError;

  /// Create a copy of GameFirstGameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameFirstGameModelCopyWith<GameFirstGameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameFirstGameModelCopyWith<$Res> {
  factory $GameFirstGameModelCopyWith(
          GameFirstGameModel value, $Res Function(GameFirstGameModel) then) =
      _$GameFirstGameModelCopyWithImpl<$Res, GameFirstGameModel>;
  @useResult
  $Res call({bool firstGame});
}

/// @nodoc
class _$GameFirstGameModelCopyWithImpl<$Res, $Val extends GameFirstGameModel>
    implements $GameFirstGameModelCopyWith<$Res> {
  _$GameFirstGameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameFirstGameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstGame = null,
  }) {
    return _then(_value.copyWith(
      firstGame: null == firstGame
          ? _value.firstGame
          : firstGame // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameFirstGameModelImplCopyWith<$Res>
    implements $GameFirstGameModelCopyWith<$Res> {
  factory _$$GameFirstGameModelImplCopyWith(_$GameFirstGameModelImpl value,
          $Res Function(_$GameFirstGameModelImpl) then) =
      __$$GameFirstGameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool firstGame});
}

/// @nodoc
class __$$GameFirstGameModelImplCopyWithImpl<$Res>
    extends _$GameFirstGameModelCopyWithImpl<$Res, _$GameFirstGameModelImpl>
    implements _$$GameFirstGameModelImplCopyWith<$Res> {
  __$$GameFirstGameModelImplCopyWithImpl(_$GameFirstGameModelImpl _value,
      $Res Function(_$GameFirstGameModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameFirstGameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstGame = null,
  }) {
    return _then(_$GameFirstGameModelImpl(
      firstGame: null == firstGame
          ? _value.firstGame
          : firstGame // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GameFirstGameModelImpl extends _GameFirstGameModel {
  _$GameFirstGameModelImpl({required this.firstGame}) : super._();

  @override
  final bool firstGame;

  @override
  String toString() {
    return 'GameFirstGameModel(firstGame: $firstGame)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameFirstGameModelImpl &&
            (identical(other.firstGame, firstGame) ||
                other.firstGame == firstGame));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstGame);

  /// Create a copy of GameFirstGameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameFirstGameModelImplCopyWith<_$GameFirstGameModelImpl> get copyWith =>
      __$$GameFirstGameModelImplCopyWithImpl<_$GameFirstGameModelImpl>(
          this, _$identity);
}

abstract class _GameFirstGameModel extends GameFirstGameModel {
  factory _GameFirstGameModel({required final bool firstGame}) =
      _$GameFirstGameModelImpl;
  _GameFirstGameModel._() : super._();

  @override
  bool get firstGame;

  /// Create a copy of GameFirstGameModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameFirstGameModelImplCopyWith<_$GameFirstGameModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
