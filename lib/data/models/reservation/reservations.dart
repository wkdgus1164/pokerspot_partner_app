import 'package:json_annotation/json_annotation.dart';
import 'package:pokerspot_partner_app/data/models/reservation/reservation.dart';
import 'package:pokerspot_partner_app/data/models/store/reservations_status_count.dart';

part 'reservations.g.dart';

@JsonSerializable()
class ReservationsModel {
  final ReservationsStatusCountModel statusCount;
  final List<ReservationModel> reservations;

  ReservationsModel({
    required this.statusCount,
    required this.reservations,
  });

  factory ReservationsModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationsModelFromJson(json);
  Map<String, dynamic> toJson() => _$ReservationsModelToJson(this);
}
