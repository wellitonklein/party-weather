part of 'list_of_cities_bloc.dart';

@freezed
sealed class ListOfCitiesState with _$ListOfCitiesState {
  const factory ListOfCitiesState({
    required List<CityEntity> cities,
    required bool isLoading,
    required Option<Either<CityFailure, CityEntity>> failureOrCompany,
  }) = _ListOfCitiesState;

  factory ListOfCitiesState.init() {
    return ListOfCitiesState(
      cities: [],
      isLoading: false,
      failureOrCompany: none(),
    );
  }

  const ListOfCitiesState._();
}
