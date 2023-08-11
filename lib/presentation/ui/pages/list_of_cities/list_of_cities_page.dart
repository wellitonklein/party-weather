import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:party_weather/domain/domain.dart';

class ListOfCitiesPage extends StatelessWidget {
  const ListOfCitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cities = List.generate(
      0,
      (index) => CityEntity(
        name: faker.address.city(),
        state: faker.address.state(),
        country: faker.address.countryCode(),
        lon: 342432.234,
        lat: 1231231.77,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de cidades'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Digite o nome da cidade',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(height: 10),
            if (cities.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: cities.length,
                  itemBuilder: (context, index) {
                    final city = cities[index];

                    return ListTile(
                      onTap: () {},
                      title: Text(city.name),
                      subtitle: Text('${city.state} - ${city.country}'),
                      trailing: Image.network(
                        'https://openweathermap.org/images/flags/${city.country.toLowerCase()}.png',
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.not_accessible);
                        },
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
