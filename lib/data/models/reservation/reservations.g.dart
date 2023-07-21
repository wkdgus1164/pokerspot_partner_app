// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationsModel _$ReservationsModelFromJson(Map<String, dynamic> json) =>
    ReservationsModel(
      statusCount: ReservationsStatusCountModel.fromJson(
          json['statusCount'] as Map<String, dynamic>),
      reservations: (json['reservations'] as List<dynamic>)
          .map((e) => ReservationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReservationsModelToJson(ReservationsModel instance) =>
    <String, dynamic>{
      'statusCount': instance.statusCount,
      'reservations': instance.reservations,
    };
