import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain.dart';

part 'list_of_cities_event.dart';
part 'list_of_cities_state.dart';
part 'list_of_cities_bloc.freezed.dart';

class ListOfCitiesBloc extends Bloc<ListOfCitiesEvent, ListOfCitiesState> {
  final CityRepository repository;

  ListOfCitiesBloc({
    required this.repository,
  }) : super(ListOfCitiesState.init()) {
    on<ListOfCitiesEvent>(onListOfCitiesEvent);
  }

  Future<void> onListOfCitiesEvent(
    ListOfCitiesEvent event,
    Emitter<ListOfCitiesState> emit,
  ) {
    return event.map(
      fieldChanged: (e) async {
        emit(state.copyWith(searchText: e.value));
      },
      searched: (e) async {
        emit(state.copyWith(isLoading: true));

        final response = await repository.searchByName(
          nameCity: state.searchText,
        );

        final newState = response.fold(
          (newFailure) => state.copyWith(
            failureOrCompanySelected: optionOf(left(newFailure)),
          ),
          (newCities) => state.copyWith(
            cities: newCities,
            failureOrCompanySelected: none(),
          ),
        );

        emit(newState.copyWith(isLoading: false));
      },
      citySelected: (e) async {
        final citySelected = state.cities.firstWhere(
          (city) => city.id == e.cityId,
        );
        final newState = state.copyWith(
          failureOrCompanySelected: optionOf(right(citySelected)),
        );
        emit(newState.copyWith(isLoading: false));
      },
      restarted: (e) async {
        emit(ListOfCitiesState.init());
      },
      searchWithGeolocation: (e) async {
        emit(state.copyWith(isLoading: true));

        final response = await repository.searchByGeolocation();

        final newState = response.fold(
          (newFailure) => state.copyWith(
            failureOrCompanySelected: optionOf(left(newFailure)),
          ),
          (newCity) => state.copyWith(
            failureOrCompanySelected: optionOf(right(newCity)),
          ),
        );

        emit(newState.copyWith(isLoading: false));
      },
    );
  }
}
