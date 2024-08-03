import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_partner_app/apps/ui/game/create/forms/buy_in/buy_in_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game/create/forms/duration/duration_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game/create/forms/every_day/every_day_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game/create/forms/first_game/first_game_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game/create/forms/game_name/game_name_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game/create/forms/max_entry/max_entry_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game/create/forms/min_entry/min_entry_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game/create/forms/min_reward/min_reward_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game/create/forms/prize/prize_form_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'gtd_form_data.freezed.dart';
part 'gtd_form_data.g.dart';

@freezed
class GameCreateGTDFormModel with _$GameCreateGTDFormModel {
  factory GameCreateGTDFormModel({
    required String gameName,
    required int buyIn,
    required int minEntry,
    required int maxEntry,
    required int prize,
    required int duration,
    required int minReward,
    required bool firstGame,
    required bool everyDay,
    required bool isValid,
  }) = _GameCreateGTDFormModel;

  GameCreateGTDFormModel._();
}

@riverpod
class GameCreateGTDFormData extends _$GameCreateGTDFormData {
  @override
  GameCreateGTDFormModel build() {
    final gameNameModel =
        ref.watch(gameCreateGameNameFormDataProvider).gameName;
    final buyInModel = ref.watch(gameCreateBuyInFormDataProvider).buyIn;
    final minEntryModel =
        ref.watch(gameCreateMinEntryFormDataProvider).minEntry;
    final maxEntryModel =
        ref.watch(gameCreateMaxEntryFormDataProvider).maxEntry;
    final prizeModel = ref.watch(gameCreatePrizeFormDataProvider).prize;
    final durationModel =
        ref.watch(gameCreateDurationFormDataProvider).duration;
    final minRewardModel =
        ref.watch(gameCreateMinRewardFormDataProvider).minReward;
    final everyDayModel =
        ref.watch(gameCreateEverydayFormDataProvider).everyDay;
    final firstGameModel =
        ref.watch(gameCreateFirstGameFormDataProvider).firstGame;

    Logger().i(
        '$gameNameModel $buyInModel $minEntryModel $maxEntryModel $prizeModel $durationModel $minRewardModel $everyDayModel $firstGameModel');

    return GameCreateGTDFormModel(
      gameName: gameNameModel,
      buyIn: buyInModel,
      minEntry: minEntryModel,
      maxEntry: maxEntryModel,
      prize: prizeModel,
      duration: durationModel,
      minReward: minRewardModel,
      everyDay: everyDayModel,
      firstGame: firstGameModel,
      isValid: buyInModel > 0,
    );
  }
}
