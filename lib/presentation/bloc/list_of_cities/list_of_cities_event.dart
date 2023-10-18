part of 'list_of_cities_bloc.dart';

@freezed
sealed class ListOfCitiesEvent with _$ListOfCitiesEvent {
  const factory ListOfCitiesEvent.fieldChanged({
    required String value,
  }) = _FieldChanged;

  const factory ListOfCitiesEvent.searched() = _Searched;

  const factory ListOfCitiesEvent.citySelected({
    required String cityId,
  }) = _CitySelected;

  const factory ListOfCitiesEvent.restarted() = _Restarted;

  const factory ListOfCitiesEvent.searchWithGeolocation() =
      _SearchWithGeolocation;

  const ListOfCitiesEvent._();
}
