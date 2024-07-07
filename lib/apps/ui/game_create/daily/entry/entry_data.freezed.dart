// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entry_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameCreateDailyEntryModel _$GameCreateDailyEntryModelFromJson(
    Map<String, dynamic> json) {
  return _GameCreateDailyEntryModel.fromJson(json);
}

/// @nodoc
mixin _$GameCreateDailyEntryModel {
  int get entry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameCreateDailyEntryModelCopyWith<GameCreateDailyEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCreateDailyEntryModelCopyWith<$Res> {
  factory $GameCreateDailyEntryModelCopyWith(GameCreateDailyEntryModel value,
          $Res Function(GameCreateDailyEntryModel) then) =
      _$GameCreateDailyEntryModelCopyWithImpl<$Res, GameCreateDailyEntryModel>;
  @useResult
  $Res call({int entry});
}

/// @nodoc
class _$GameCreateDailyEntryModelCopyWithImpl<$Res,
        $Val extends GameCreateDailyEntryModel>
    implements $GameCreateDailyEntryModelCopyWith<$Res> {
  _$GameCreateDailyEntryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = null,
  }) {
    return _then(_value.copyWith(
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameCreateDailyEntryModelImplCopyWith<$Res>
    implements $GameCreateDailyEntryModelCopyWith<$Res> {
  factory _$$GameCreateDailyEntryModelImplCopyWith(
          _$GameCreateDailyEntryModelImpl value,
          $Res Function(_$GameCreateDailyEntryModelImpl) then) =
      __$$GameCreateDailyEntryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int entry});
}

/// @nodoc
class __$$GameCreateDailyEntryModelImplCopyWithImpl<$Res>
    extends _$GameCreateDailyEntryModelCopyWithImpl<$Res,
        _$GameCreateDailyEntryModelImpl>
    implements _$$GameCreateDailyEntryModelImplCopyWith<$Res> {
  __$$GameCreateDailyEntryModelImplCopyWithImpl(
      _$GameCreateDailyEntryModelImpl _value,
      $Res Function(_$GameCreateDailyEntryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = null,
  }) {
    return _then(_$GameCreateDailyEntryModelImpl(
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameCreateDailyEntryModelImpl implements _GameCreateDailyEntryModel {
  _$GameCreateDailyEntryModelImpl({required this.entry});

  factory _$GameCreateDailyEntryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameCreateDailyEntryModelImplFromJson(json);

  @override
  final int entry;

  @override
  String toString() {
    return 'GameCreateDailyEntryModel(entry: $entry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameCreateDailyEntryModelImpl &&
            (identical(other.entry, entry) || other.entry == entry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, entry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameCreateDailyEntryModelImplCopyWith<_$GameCreateDailyEntryModelImpl>
      get copyWith => __$$GameCreateDailyEntryModelImplCopyWithImpl<
          _$GameCreateDailyEntryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameCreateDailyEntryModelImplToJson(
      this,
    );
  }
}

abstract class _GameCreateDailyEntryModel implements GameCreateDailyEntryModel {
  factory _GameCreateDailyEntryModel({required final int entry}) =
      _$GameCreateDailyEntryModelImpl;

  factory _GameCreateDailyEntryModel.fromJson(Map<String, dynamic> json) =
      _$GameCreateDailyEntryModelImpl.fromJson;

  @override
  int get entry;
  @override
  @JsonKey(ignore: true)
  _$$GameCreateDailyEntryModelImplCopyWith<_$GameCreateDailyEntryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
