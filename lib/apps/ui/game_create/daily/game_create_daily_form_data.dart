import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/buy_in/buy_in_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/duration/duration_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/every_day/every_day_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/first_game/first_game_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/game_name/game_name_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/max_entry/max_entry_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/min_entry/min_entry_form_data.dart';
import 'package:pokerspot_partner_app/apps/ui/game_create/daily/forms/prize/prize_form_data.dart';
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
        ref.watch(gameCreateDailyGameNameFormDataProvider).gameName;
    final buyInModel = ref.watch(gameCreateDailyBuyInFormDataProvider).buyIn;
    final minEntryModel =
        ref.watch(gameCreateDailyMinEntryFormDataProvider).minEntry;
    final maxEntryModel =
        ref.watch(gameCreateDailyMaxEntryFormDataProvider).maxEntry;
    final prizeModel = ref.watch(gameCreateDailyPrizeFormDataProvider).prize;
    final durationModel =
        ref.watch(gameCreateDailyDurationFormDataProvider).duration;
    final everyDayModel =
        ref.watch(gameCreateDailyEverydayFormDataProvider).everyDay;
    final firstGameModel =
        ref.watch(gameCreateDailyFirstGameFormDataProvider).firstGame;

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

  createGame() {
    final gameNameModel =
        ref.watch(gameCreateDailyGameNameFormDataProvider).gameName;
    final buyInModel = ref.watch(gameCreateDailyBuyInFormDataProvider).buyIn;
    final minEntryModel =
        ref.watch(gameCreateDailyMinEntryFormDataProvider).minEntry;
    final maxEntryModel =
        ref.watch(gameCreateDailyMaxEntryFormDataProvider).maxEntry;
    final prizeModel = ref.watch(gameCreateDailyPrizeFormDataProvider).prize;
    final durationModel =
        ref.watch(gameCreateDailyDurationFormDataProvider).duration;
    final everyDayModel =
        ref.watch(gameCreateDailyEverydayFormDataProvider).everyDay;
    final firstGameModel =
        ref.watch(gameCreateDailyFirstGameFormDataProvider).firstGame;
    Logger().i(
      'createGame: $gameNameModel, $buyInModel, $minEntryModel, $maxEntryModel, $prizeModel, $durationModel, $everyDayModel, $firstGameModel',
    );
  }
}
