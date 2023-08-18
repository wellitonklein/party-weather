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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de cidades'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: BlocConsumer<ListOfCitiesBloc, ListOfCitiesState>(
          bloc: bloc,
          listener: (context, state) {
            if (state is CitySelectedState) {
              Navigator.of(context).pushNamed(
                '/weather-detail',
                arguments: state.city,
              );
            }
          },
          builder: (context, state) {
            void restartPage() {
              bloc.add(RestartedEvent());
            }

            void searchText(String value) {
              bloc.add(FieldChangedEvent(value: value));
            }

            void searched() {
              bloc.add(SearchedEvent());
            }

            if ((state is InitialState) || (state is CitySelectedState)) {
              return Center(
                child: SearchFieldWidget(
                  onChanged: searchText,
                  onPressed: searched,
                ),
              );
            }

            if (state is LoadingState) {
              return const CityLoadingWidget();
            }

            if (state is NotFoundState) {
              return CityNotFoundWidget(restartPage: restartPage);
            }

            if (state is DataFoundState) {
              return CityListWidget(
                cities: state.cities,
                onChanged: searchText,
                onPressed: searched,
                onSelectCity: (cityId) {
                  bloc.add(CitySelectedEvent(cityId: cityId));
                },
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
