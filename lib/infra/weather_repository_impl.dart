import 'package:geolocator/geolocator.dart';
import 'package:uno/uno.dart';

import '../domain/domain.dart';
import 'mappers/mappers.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final Uno client;
  final String url;
  final String appId;

  const WeatherRepositoryImpl({
    required this.client,
    required this.url,
    required this.appId,
  });

  @override
  Future<WeatherEntity> searchByLocation({
    required double lon,
    required double lat,
  }) async {
    final response = await client.get(
      '$url/data/2.5/weather?lat=$lat&lon=$lon&APPID=$appId&units=metric',
    );

    if (response.status == 200) {
      return WeatherMapper.fromMap(response.data);
    }

    throw Exception('Não foi encontrado nenhuma previsão.');
  }

  @override
  Future<WeatherEntity> searchByGeolocation() async {
    var serviceEnabled = false;
    late LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('GPS está desativado.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception(
          'Precisar dar permissão para encontrar sua localização.',
        );
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception(
        'Permissão de localização negada permanentemente.',
      );
    }

    final position = await Geolocator.getCurrentPosition();
    return searchByLocation(lon: position.longitude, lat: position.latitude);
  }
}
