part of 'list_of_cities_bloc.dart';

sealed class ListOfCitiesState extends Equatable {
  const ListOfCitiesState();

  @override
  List<Object> get props => [];
}

final class InitialState extends ListOfCitiesState {}

final class LoadingState extends ListOfCitiesState {}

final class NotFoundState extends ListOfCitiesState {}

final class DataFoundState extends ListOfCitiesState {
  final List<CityEntity> cities;
  const DataFoundState({required this.cities});

  @override
  List<Object> get props => [cities];
}

final class CitySelectedState extends ListOfCitiesState {
  final CityEntity city;
  const CitySelectedState({required this.city});

  @override
  List<Object> get props => [city];
}
