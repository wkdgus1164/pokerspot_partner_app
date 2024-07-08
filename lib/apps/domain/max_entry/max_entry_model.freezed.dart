// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'max_entry_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameMaxEntryModel {
  int get maxEntry => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameMaxEntryModelCopyWith<GameMaxEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameMaxEntryModelCopyWith<$Res> {
  factory $GameMaxEntryModelCopyWith(
          GameMaxEntryModel value, $Res Function(GameMaxEntryModel) then) =
      _$GameMaxEntryModelCopyWithImpl<$Res, GameMaxEntryModel>;
  @useResult
  $Res call({int maxEntry});
}

/// @nodoc
class _$GameMaxEntryModelCopyWithImpl<$Res, $Val extends GameMaxEntryModel>
    implements $GameMaxEntryModelCopyWith<$Res> {
  _$GameMaxEntryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxEntry = null,
  }) {
    return _then(_value.copyWith(
      maxEntry: null == maxEntry
          ? _value.maxEntry
          : maxEntry // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameMaxEntryModelImplCopyWith<$Res>
    implements $GameMaxEntryModelCopyWith<$Res> {
  factory _$$GameMaxEntryModelImplCopyWith(_$GameMaxEntryModelImpl value,
          $Res Function(_$GameMaxEntryModelImpl) then) =
      __$$GameMaxEntryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int maxEntry});
}

/// @nodoc
class __$$GameMaxEntryModelImplCopyWithImpl<$Res>
    extends _$GameMaxEntryModelCopyWithImpl<$Res, _$GameMaxEntryModelImpl>
    implements _$$GameMaxEntryModelImplCopyWith<$Res> {
  __$$GameMaxEntryModelImplCopyWithImpl(_$GameMaxEntryModelImpl _value,
      $Res Function(_$GameMaxEntryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxEntry = null,
  }) {
    return _then(_$GameMaxEntryModelImpl(
      maxEntry: null == maxEntry
          ? _value.maxEntry
          : maxEntry // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameMaxEntryModelImpl extends _GameMaxEntryModel {
  _$GameMaxEntryModelImpl({required this.maxEntry}) : super._();

  @override
  final int maxEntry;

  @override
  String toString() {
    return 'GameMaxEntryModel(maxEntry: $maxEntry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameMaxEntryModelImpl &&
            (identical(other.maxEntry, maxEntry) ||
                other.maxEntry == maxEntry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, maxEntry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameMaxEntryModelImplCopyWith<_$GameMaxEntryModelImpl> get copyWith =>
      __$$GameMaxEntryModelImplCopyWithImpl<_$GameMaxEntryModelImpl>(
          this, _$identity);
}

abstract class _GameMaxEntryModel extends GameMaxEntryModel {
  factory _GameMaxEntryModel({required final int maxEntry}) =
      _$GameMaxEntryModelImpl;
  _GameMaxEntryModel._() : super._();

  @override
  int get maxEntry;
  @override
  @JsonKey(ignore: true)
  _$$GameMaxEntryModelImplCopyWith<_$GameMaxEntryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
