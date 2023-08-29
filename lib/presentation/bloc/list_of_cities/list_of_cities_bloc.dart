import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/core.dart';
import '../../../domain/domain.dart';

part 'list_of_cities_event.dart';
part 'list_of_cities_state.dart';

class ListOfCitiesBloc extends Bloc<ListOfCitiesEvent, ListOfCitiesState> {
  final CityRepository repository;

  String searchText = '';
  List<CityEntity> cities = [];
  CityEntity? citySelected;

  ListOfCitiesBloc({
    required this.repository,
  }) : super(InitialState()) {
    on<SearchedEvent>((event, emit) async {
      emit(LoadingState());

      final response = await repository.searchByName(nameCity: searchText);

      switch (response) {
        case Failure(:final exception):
          if (exception is UnexpectedCityFailure) {
            emit(FailureState(exception.message));
          }
          break;
        case Success(:final value):
          cities = value;
          emit(DataFoundState(cities: value));
      }
    });

    on<SearchWithGeolocationEvent>((event, emit) async {
      emit(LoadingState());

      try {
        citySelected = await repository.searchByGeolocation();

        if (citySelected != null) {
          emit(CitySelectedState(city: citySelected!));
        }
      } on FormatException catch (e) {
        emit(FailureState(e.message));
      }
    });

    on<FieldChangedEvent>((event, emit) {
      searchText = event.value;
    });

    on<CitySelectedEvent>((event, emit) {
      citySelected = cities.firstWhere((city) => city.id == event.cityId);

      if (citySelected != null) {
        emit(CitySelectedState(city: citySelected!));
      }
    });

    on<RestartedEvent>((event, emit) {
      emit(InitialState());
    });
  }
}
