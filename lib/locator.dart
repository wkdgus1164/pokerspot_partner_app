import 'package:get_it/get_it.dart';
import 'package:pokerspot_partner_app/presentation/providers/token_provider.dart';

import 'data/network/api_client.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => TokenProvider());
  locator.registerLazySingleton(() => DioClient(locator<TokenProvider>()));
}
