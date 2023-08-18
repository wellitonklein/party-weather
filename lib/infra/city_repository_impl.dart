import 'package:geolocator/geolocator.dart';
import 'package:uno/uno.dart';

import '../domain/domain.dart';
import 'mappers/mappers.dart';

class CityRepositoryImpl implements CityRepository {
  final Uno client;
  final String url;
  final String appId;

  const CityRepositoryImpl({
    required this.client,
    required this.url,
    required this.appId,
  });

  @override
  Future<List<CityEntity>> searchByName({required String nameCity}) async {
    final response = await client.get(
      '$url/geo/1.0/direct?q=$nameCity&limit=5&lang=pt_br&APPID=$appId',
    );

    if (response.status == 200) {
      return CityMapper.fromJson(response.data);
    }

    throw Exception('Não foi possível encontrar a cidade.');
  }

  @override
  Future<CityEntity> searchByGeolocation() async {
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
    return CityEntity.init(
      name: '',
      state: '',
      country: '',
      lon: position.longitude,
      lat: position.latitude,
    );
  }
}
