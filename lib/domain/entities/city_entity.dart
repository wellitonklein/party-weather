import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class CityEntity extends Equatable {
  final String id;
  final String name;
  final String state;
  final String country;
  final double lon;
  final double lat;

  const CityEntity._({
    required this.id,
    required this.name,
    required this.state,
    required this.country,
    required this.lon,
    required this.lat,
  });

  factory CityEntity.init({
    required String name,
    required String state,
    required String country,
    required double lon,
    required double lat,
  }) {
    return CityEntity._(
      id: const Uuid().v4(),
      name: name,
      state: state,
      country: country,
      lon: lon,
      lat: lat,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        state,
        country,
        lon,
        lat,
      ];
}
