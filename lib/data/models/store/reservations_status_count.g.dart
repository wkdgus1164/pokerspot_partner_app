// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservations_status_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationsStatusCountModel _$ReservationsStatusCountModelFromJson(
        Map<String, dynamic> json) =>
    ReservationsStatusCountModel(
      pending: json['PENDING'] as int? ?? 0,
      accept: json['ACCEPT'] as int? ?? 0,
      reject: json['REJECT'] as int? ?? 0,
    );

Map<String, dynamic> _$ReservationsStatusCountModelToJson(
        ReservationsStatusCountModel instance) =>
    <String, dynamic>{
      'PENDING': instance.pending,
      'ACCEPT': instance.accept,
      'REJECT': instance.reject,
    };
