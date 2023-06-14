import 'package:get_it/get_it.dart';
import 'package:pokerspot_partner_app/data/repositories/notice_repository.dart';
import 'package:pokerspot_partner_app/data/repositories/partner_repository.dart';
import 'package:pokerspot_partner_app/data/repositories/store_repository.dart';
import 'package:pokerspot_partner_app/domain/usecases/create_store_usecase.dart';
import 'package:pokerspot_partner_app/domain/usecases/home_usecase.dart';
import 'package:pokerspot_partner_app/domain/usecases/notice_usecase.dart';
import 'package:pokerspot_partner_app/domain/usecases/signup_usecase.dart';
import 'package:pokerspot_partner_app/presentation/providers/auth_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/create_store_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/home_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/notice_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/signup_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/token_provider.dart';

import 'data/network/api_client.dart';
import 'domain/usecases/sign_in_usecase.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  /// Provider
  locator
      .registerLazySingleton(() => AuthProviderProvider(locator(), locator()));
  locator.registerLazySingleton(() => TokenProvider());
  locator.registerFactory(() => SignupProvider(locator()));
  locator.registerLazySingleton(() => HomeProvider(locator()));
  locator.registerLazySingleton(() => CreateStoreProvider(locator()));
  locator.registerFactory(() => NoticeProvider(locator()));

  /// Usecase
  locator.registerFactory(() => SignupUsecase(locator()));
  locator.registerFactory(() => SignInUsecase(locator()));
  locator.registerFactory(() => HomeUsecase(locator()));
  locator.registerFactory(() => CreateStoreUsecase(locator()));
  locator.registerFactory(() => NoticeUsecase(locator()));

  /// Network
  locator.registerLazySingleton(() => DioClient(locator()));
  locator.registerFactory(() => PartnerRepository(locator()));
  locator.registerFactory(() => StoreRepository(locator()));
  locator.registerFactory(() => NoticeRepository(locator()));
}
