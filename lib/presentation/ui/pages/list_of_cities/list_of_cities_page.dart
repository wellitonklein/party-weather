import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../main/factories/factories.dart';
import '../../../bloc/bloc.dart';
import 'widgets/widgets.dart';

class ListOfCitiesPage extends StatefulWidget {
  const ListOfCitiesPage({super.key});

  @override
  State<ListOfCitiesPage> createState() => _ListOfCitiesPageState();
}

class _ListOfCitiesPageState extends State<ListOfCitiesPage> {
  late final ListOfCitiesBloc bloc;

  @override
  void initState() {
    bloc = listOfCitiesBlocFactory();
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<ListOfCitiesBloc, ListOfCitiesState>(
        bloc: bloc,
        listenWhen: (_, c) => c.failureOrCompanySelected.isSome(),
        listener: (context, state) {
          state.failureOrCompanySelected.fold(
            () => null,
            (failureOrCity) => failureOrCity.fold(
              (_) => null,
              (city) => Navigator.of(context).popAndPushNamed(
                '/weather-detail',
                arguments: city,
              ),
            ),
          );
        },
        buildWhen: (p, c) {
          return (p.isLoading != c.isLoading) || (p.hasFailure != c.hasFailure);
        },
        builder: (context, state) {
          void restartPage() {
            bloc.add(const ListOfCitiesEvent.restarted());
          }

          void searchText(String value) {
            bloc.add(ListOfCitiesEvent.fieldChanged(value: value));
          }

          void searched() {
            bloc.add(const ListOfCitiesEvent.searched());
          }

          return Scaffold(
            floatingActionButton: Visibility(
              visible: !state.hasFailure,
              child: FloatingActionButton(
                tooltip: 'Sua posição atual',
                child: const Icon(Icons.pin_drop_outlined),
                onPressed: () {
                  bloc.add(const ListOfCitiesEvent.searchWithGeolocation());
                },
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8),
              child: state.isLoading
                  ? const CityLoadingWidget()
                  : state.hasFailure
                      ? FailureWidget(
                          errorMessage: state.errorMessage,
                          restartPage: restartPage,
                        )
                      : CityListWidget(
                          cities: state.cities,
                          onChanged: searchText,
                          onPressed: searched,
                          onSelectCity: (cityId) {
                            bloc.add(
                              ListOfCitiesEvent.citySelected(cityId: cityId),
                            );
                          },
                        ),
            ),
          );
        },
      ),
    );
  }
}
