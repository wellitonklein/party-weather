import 'package:flutter/material.dart';

import '../../../../domain/domain.dart';

class WeatherDetailPage extends StatelessWidget {
  const WeatherDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments! as CityEntity;

    return Scaffold(
      appBar: AppBar(
        title: Text('${args.name} - ${args.state}'),
      ),
    );
  }
}
