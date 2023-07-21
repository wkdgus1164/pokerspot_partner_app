import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

import '../store/mtt_game.dart';

part 'create_game.g.dart';

@CopyWith()
@JsonSerializable()
class CreateGameModel {
  final String storeUid;
  final TonerType type;
  final int entryPrice;
  final int entryMin;
  final int entryMax;
  final String prize;
  final String targetMttName;
  final int gtdMinReward;
  final bool isDaily;

  CreateGameModel({
    required this.storeUid,
    required this.type,
    required this.entryPrice,
    required this.entryMin,
    required this.entryMax,
    required this.prize,
    required this.targetMttName,
    required this.gtdMinReward,
    required this.isDaily,
  });

  factory CreateGameModel.fromJson(Map<String, dynamic> json) =>
      _$CreateGameModelFromJson(json);
  Map<String, dynamic> toJson() => _$CreateGameModelToJson(this);
}
