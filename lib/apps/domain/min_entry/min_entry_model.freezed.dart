// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'min_entry_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameMinEntryModel {
  int get minEntry => throw _privateConstructorUsedError;

  /// Create a copy of GameMinEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameMinEntryModelCopyWith<GameMinEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameMinEntryModelCopyWith<$Res> {
  factory $GameMinEntryModelCopyWith(
          GameMinEntryModel value, $Res Function(GameMinEntryModel) then) =
      _$GameMinEntryModelCopyWithImpl<$Res, GameMinEntryModel>;
  @useResult
  $Res call({int minEntry});
}

/// @nodoc
class _$GameMinEntryModelCopyWithImpl<$Res, $Val extends GameMinEntryModel>
    implements $GameMinEntryModelCopyWith<$Res> {
  _$GameMinEntryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameMinEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minEntry = null,
  }) {
    return _then(_value.copyWith(
      minEntry: null == minEntry
          ? _value.minEntry
          : minEntry // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameMinEntryModelImplCopyWith<$Res>
    implements $GameMinEntryModelCopyWith<$Res> {
  factory _$$GameMinEntryModelImplCopyWith(_$GameMinEntryModelImpl value,
          $Res Function(_$GameMinEntryModelImpl) then) =
      __$$GameMinEntryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int minEntry});
}

/// @nodoc
class __$$GameMinEntryModelImplCopyWithImpl<$Res>
    extends _$GameMinEntryModelCopyWithImpl<$Res, _$GameMinEntryModelImpl>
    implements _$$GameMinEntryModelImplCopyWith<$Res> {
  __$$GameMinEntryModelImplCopyWithImpl(_$GameMinEntryModelImpl _value,
      $Res Function(_$GameMinEntryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameMinEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minEntry = null,
  }) {
    return _then(_$GameMinEntryModelImpl(
      minEntry: null == minEntry
          ? _value.minEntry
          : minEntry // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameMinEntryModelImpl extends _GameMinEntryModel {
  _$GameMinEntryModelImpl({required this.minEntry}) : super._();

  @override
  final int minEntry;

  @override
  String toString() {
    return 'GameMinEntryModel(minEntry: $minEntry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameMinEntryModelImpl &&
            (identical(other.minEntry, minEntry) ||
                other.minEntry == minEntry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minEntry);

  /// Create a copy of GameMinEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameMinEntryModelImplCopyWith<_$GameMinEntryModelImpl> get copyWith =>
      __$$GameMinEntryModelImplCopyWithImpl<_$GameMinEntryModelImpl>(
          this, _$identity);
}

abstract class _GameMinEntryModel extends GameMinEntryModel {
  factory _GameMinEntryModel({required final int minEntry}) =
      _$GameMinEntryModelImpl;
  _GameMinEntryModel._() : super._();

  @override
  int get minEntry;

  /// Create a copy of GameMinEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameMinEntryModelImplCopyWith<_$GameMinEntryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
