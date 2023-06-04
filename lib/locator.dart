import 'package:get_it/get_it.dart';
import 'package:pokerspot_partner_app/data/repositories/partner_repository.dart';
import 'package:pokerspot_partner_app/domain/usecases/signup_usecase.dart';
import 'package:pokerspot_partner_app/presentation/providers/partner_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/signup_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/token_provider.dart';

import 'data/network/api_client.dart';
import 'domain/usecases/sign_in_usecase.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  /// Provider
  locator.registerLazySingleton(() => PartnerProvider(locator()));
  locator.registerLazySingleton(() => TokenProvider());
  locator.registerFactory(() => SignupProvider(locator()));

  /// Usecase
  locator.registerFactory(() => SignupUsecase(locator()));
  locator.registerFactory(() => SignInUsecase(locator()));

  /// Network
  locator.registerLazySingleton(() => DioClient(locator()));
  locator.registerFactory(() => PartnerRepository(locator()));
}
