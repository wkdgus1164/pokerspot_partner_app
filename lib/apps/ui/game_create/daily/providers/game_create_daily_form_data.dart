import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/forms/buy_in/buy_in_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/forms/duration/duration_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/forms/every_day/every_day_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/forms/first_game/first_game_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/forms/game_name/game_name_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/forms/max_entry/max_entry_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/forms/min_entry/min_entry_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/forms/prize/prize_form_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_create_daily_form_data.freezed.dart';
part 'game_create_daily_form_data.g.dart';

@freezed
class GameCreateDailyFormModel with _$GameCreateDailyFormModel {
  factory GameCreateDailyFormModel({
    required String gameName,
    required int buyIn,
    required int minEntry,
    required int maxEntry,
    required int prize,
    required int duration,
    required bool firstGame,
    required bool everyDay,
    required bool isValid,
  }) = _GameCreateDailyFormModel;

  GameCreateDailyFormModel._();
}

@riverpod
class GameCreateDailyFormData extends _$GameCreateDailyFormData {
  @override
  GameCreateDailyFormModel build() {
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
    final everyDayModel =
        ref.watch(gameCreateEverydayFormDataProvider).everyDay;
    final firstGameModel =
        ref.watch(gameCreateFirstGameFormDataProvider).firstGame;

    Logger().i(
        '$gameNameModel $buyInModel $minEntryModel $maxEntryModel $prizeModel $durationModel $everyDayModel $firstGameModel');

    return GameCreateDailyFormModel(
      gameName: gameNameModel,
      buyIn: buyInModel,
      minEntry: minEntryModel,
      maxEntry: maxEntryModel,
      prize: prizeModel,
      duration: durationModel,
      everyDay: everyDayModel,
      firstGame: firstGameModel,
      isValid: buyInModel > 0,
    );
  }
}
