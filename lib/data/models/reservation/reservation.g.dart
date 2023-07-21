// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationModel _$ReservationModelFromJson(Map<String, dynamic> json) =>
    ReservationModel(
      uid: json['uid'] as String,
      time: json['time'] as String,
      personNum: json['personNum'] as int,
      status: json['status'] as String,
      reservationUserName: json['reservationUserName'] as String,
      reservationUserPhoneNumber: json['reservationUserPhoneNumber'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isUsedCoupon: json['isUsedCoupon'] as bool,
    );

Map<String, dynamic> _$ReservationModelToJson(ReservationModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'time': instance.time,
      'personNum': instance.personNum,
      'status': instance.status,
      'reservationUserName': instance.reservationUserName,
      'reservationUserPhoneNumber': instance.reservationUserPhoneNumber,
      'createdAt': instance.createdAt.toIso8601String(),
      'isUsedCoupon': instance.isUsedCoupon,
    };
