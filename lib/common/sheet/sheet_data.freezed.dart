// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sheet_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomSheetModel {
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  Widget get icon => throw _privateConstructorUsedError;
  dynamic Function() get onTap => throw _privateConstructorUsedError;

  /// Create a copy of CustomSheetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomSheetModelCopyWith<CustomSheetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomSheetModelCopyWith<$Res> {
  factory $CustomSheetModelCopyWith(
          CustomSheetModel value, $Res Function(CustomSheetModel) then) =
      _$CustomSheetModelCopyWithImpl<$Res, CustomSheetModel>;
  @useResult
  $Res call(
      {String title, String subtitle, Widget icon, dynamic Function() onTap});
}

/// @nodoc
class _$CustomSheetModelCopyWithImpl<$Res, $Val extends CustomSheetModel>
    implements $CustomSheetModelCopyWith<$Res> {
  _$CustomSheetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomSheetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? icon = null,
    Object? onTap = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as dynamic Function(),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomSheetModelImplCopyWith<$Res>
    implements $CustomSheetModelCopyWith<$Res> {
  factory _$$CustomSheetModelImplCopyWith(_$CustomSheetModelImpl value,
          $Res Function(_$CustomSheetModelImpl) then) =
      __$$CustomSheetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, String subtitle, Widget icon, dynamic Function() onTap});
}

/// @nodoc
class __$$CustomSheetModelImplCopyWithImpl<$Res>
    extends _$CustomSheetModelCopyWithImpl<$Res, _$CustomSheetModelImpl>
    implements _$$CustomSheetModelImplCopyWith<$Res> {
  __$$CustomSheetModelImplCopyWithImpl(_$CustomSheetModelImpl _value,
      $Res Function(_$CustomSheetModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomSheetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? icon = null,
    Object? onTap = null,
  }) {
    return _then(_$CustomSheetModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as dynamic Function(),
    ));
  }
}

/// @nodoc

class _$CustomSheetModelImpl implements _CustomSheetModel {
  _$CustomSheetModelImpl(
      {required this.title,
      required this.subtitle,
      required this.icon,
      required this.onTap});

  @override
  final String title;
  @override
  final String subtitle;
  @override
  final Widget icon;
  @override
  final dynamic Function() onTap;

  @override
  String toString() {
    return 'CustomSheetModel(title: $title, subtitle: $subtitle, icon: $icon, onTap: $onTap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomSheetModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.onTap, onTap) || other.onTap == onTap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, subtitle, icon, onTap);

  /// Create a copy of CustomSheetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomSheetModelImplCopyWith<_$CustomSheetModelImpl> get copyWith =>
      __$$CustomSheetModelImplCopyWithImpl<_$CustomSheetModelImpl>(
          this, _$identity);
}

abstract class _CustomSheetModel implements CustomSheetModel {
  factory _CustomSheetModel(
      {required final String title,
      required final String subtitle,
      required final Widget icon,
      required final dynamic Function() onTap}) = _$CustomSheetModelImpl;

  @override
  String get title;
  @override
  String get subtitle;
  @override
  Widget get icon;
  @override
  dynamic Function() get onTap;

  /// Create a copy of CustomSheetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomSheetModelImplCopyWith<_$CustomSheetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
