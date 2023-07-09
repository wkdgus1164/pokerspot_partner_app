import 'package:json_annotation/json_annotation.dart';

part 'reservations_status_count.g.dart';

@JsonSerializable()
class ReservationsStatusCountModel {
  @JsonKey(name: 'PENDING')
  final int pending;
  @JsonKey(name: 'ACCEPT')
  final int accept;
  @JsonKey(name: 'REJECT')
  final int reject;

  ReservationsStatusCountModel({
    this.pending = 0,
    this.accept = 0,
    this.reject = 0,
  });

  factory ReservationsStatusCountModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationsStatusCountModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReservationsStatusCountModelToJson(this);
}
