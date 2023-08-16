import 'package:uno/uno.dart';

import '../../domain/domain.dart';
import '../../infra/infra.dart';

CityRepository cityReopsitoryFactory() {
  return CityRepositoryImpl(
    client: Uno(),
    url: 'https://api.openweathermap.org',
    appId: 'c93ec169bc7918636f32dc40e73d73d8',
  );
}
