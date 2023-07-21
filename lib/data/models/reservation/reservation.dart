import 'package:json_annotation/json_annotation.dart';

part 'reservation.g.dart';

@JsonSerializable()
class ReservationModel {
  final String uid;
  final String time;
  final int personNum;
  final String status;
  final String reservationUserName;
  final String reservationUserPhoneNumber;
  final DateTime createdAt;
  final bool isUsedCoupon;

  ReservationModel({
    required this.uid,
    required this.time,
    required this.personNum,
    required this.status,
    required this.reservationUserName,
    required this.reservationUserPhoneNumber,
    required this.createdAt,
    required this.isUsedCoupon,
  });

  factory ReservationModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationModelFromJson(json);
  Map<String, dynamic> toJson() => _$ReservationModelToJson(this);
}
