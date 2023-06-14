// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NoticeModelCWProxy {
  NoticeModel id(int id);

  NoticeModel title(String title);

  NoticeModel content(String content);

  NoticeModel createdAt(DateTime createdAt);

  NoticeModel updatedAt(DateTime updatedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NoticeModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NoticeModel(...).copyWith(id: 12, name: "My name")
  /// ````
  NoticeModel call({
    int? id,
    String? title,
    String? content,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNoticeModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNoticeModel.copyWith.fieldName(...)`
class _$NoticeModelCWProxyImpl implements _$NoticeModelCWProxy {
  const _$NoticeModelCWProxyImpl(this._value);

  final NoticeModel _value;

  @override
  NoticeModel id(int id) => this(id: id);

  @override
  NoticeModel title(String title) => this(title: title);

  @override
  NoticeModel content(String content) => this(content: content);

  @override
  NoticeModel createdAt(DateTime createdAt) => this(createdAt: createdAt);

  @override
  NoticeModel updatedAt(DateTime updatedAt) => this(updatedAt: updatedAt);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NoticeModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NoticeModel(...).copyWith(id: 12, name: "My name")
  /// ````
  NoticeModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return NoticeModel(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      content: content == const $CopyWithPlaceholder() || content == null
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      updatedAt: updatedAt == const $CopyWithPlaceholder() || updatedAt == null
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime,
    );
  }
}

extension $NoticeModelCopyWith on NoticeModel {
  /// Returns a callable class that can be used as follows: `instanceOfNoticeModel.copyWith(...)` or like so:`instanceOfNoticeModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NoticeModelCWProxy get copyWith => _$NoticeModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoticeModel _$NoticeModelFromJson(Map<String, dynamic> json) => NoticeModel(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String? ?? '',
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$NoticeModelToJson(NoticeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
