import '../core/core.dart';
import 'entities/entities.dart';

sealed class CityFailure implements Exception {}

final class NotFoundCityFailure implements CityFailure {}

final class UnexpectedCityFailure implements CityFailure {
  final String message;
  const UnexpectedCityFailure(this.message);
}

abstract interface class CityRepository {
  Future<Either<CityFailure, List<CityEntity>>> searchByName({
    required String nameCity,
  });

  Future<CityEntity> searchByGeolocation();
}
