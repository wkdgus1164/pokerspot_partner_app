import 'package:get_it/get_it.dart';
import 'package:pokerspot_partner_app/data/repositories/partner_repository.dart';
import 'package:pokerspot_partner_app/domain/usecases/signup_usecase.dart';
import 'package:pokerspot_partner_app/presentation/providers/signup_provider.dart';
import 'package:pokerspot_partner_app/presentation/providers/token_provider.dart';

import 'data/network/api_client.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  /// Provider
  locator.registerLazySingleton(() => TokenProvider());
  locator.registerFactory(() => SignupProvider(locator()));

  /// Usecase
  locator.registerFactory(() => SignupUsecase(locator()));

  /// Network
  locator.registerLazySingleton(() => DioClient(locator()));
  locator.registerFactory(() => PartnerRepository(locator()));
}
