import 'package:get_it/get_it.dart';
import 'package:pokerspot_partner_app/data/repositories/game_repository.dart';
import 'package:pokerspot_partner_app/data/repositories/notice_repository.dart';
import 'package:pokerspot_partner_app/data/repositories/partner_repository.dart';
import 'package:pokerspot_partner_app/data/repositories/reservation_repository.dart';
import 'package:pokerspot_partner_app/data/repositories/store_repository.dart';
import 'package:pokerspot_partner_app/domain/usecases/create_store_usecase.dart';
import 'package:pokerspot_partner_app/domain/usecases/game_usecase.dart';
import 'package:pokerspot_partner_app/domain/usecases/home_usecase.dart';
import 'package:pokerspot_partner_app/domain/usecases/my_usecase.dart';
import 'package:pokerspot_partner_app/domain/usecases/notice_usecase.dart';
import 'package:pokerspot_partner_app/domain/usecases/reservation_usecase.dart';
import 'package:pokerspot_partner_app/domain/usecases/signup_usecase.dart';
import 'package:pokerspot_partner_app/domain/usecases/store_usecase.dart';
import 'package:pokerspot_partner_app/domain/usecases/tournament_usecase.dart';
import 'package:pokerspot_partner_app/presentation/providers/auth_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/create_store_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/home_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/notice_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/reservation_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/signup_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/token_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/tournament_provider.dart';

import 'data/network/api_client.dart';
import 'domain/usecases/sign_in_usecase.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  /// Provider
  locator.registerLazySingleton(
      () => AuthProvider(locator(), locator(), locator()));
  locator.registerLazySingleton(() => TokenProvider());
  locator.registerLazySingleton(() => SignupProvider(locator()));
  locator.registerLazySingleton(() => HomeProvider(locator()));
  locator.registerLazySingleton(() => CreateStoreProvider(locator()));
  locator.registerFactory(() => NoticeProvider(locator()));
  locator.registerFactory(
      () => TournamentProvider(locator(), locator<HomeProvider>().games));
  locator.registerFactory(() => ReservationProvider(
      locator<HomeProvider>().selectedStore?.uid ?? '', locator()));

  /// Usecase
  locator.registerFactory(() => SignupUsecase(locator()));
  locator.registerFactory(() => SignInUsecase(locator()));
  locator.registerFactory(() => HomeUsecase(locator(), locator()));
  locator.registerFactory(() => CreateStoreUsecase(locator()));
  locator.registerFactory(() => NoticeUsecase(locator()));
  locator.registerFactory(() => MyUsecase(locator()));
  locator.registerFactory(() => TournamentUsecase(locator()));
  locator.registerFactory(() => ReservationUsecase(locator()));
  locator.registerFactory(() => StoreUsecase(locator()));
  locator.registerFactory(() => GameUsecase(locator()));

  /// Network
  locator.registerLazySingleton(() => DioClient(locator()));
  locator.registerFactory(() => PartnerRepository(locator()));
  locator.registerFactory(() => StoreRepository(locator()));
  locator.registerFactory(() => NoticeRepository(locator()));
  locator.registerFactory(() => GameRepository(locator()));
  locator.registerFactory(() => ReservationRepository(locator()));
}
