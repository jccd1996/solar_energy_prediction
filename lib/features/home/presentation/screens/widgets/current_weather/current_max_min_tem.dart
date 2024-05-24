import 'package:flutter/material.dart';
import 'package:solar_energy_prediction/core/extensions/app_context_extension.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_info_entity.dart';

class CurrentMaxMinTemInfo extends StatelessWidget {
  final WeatherInfoEntity weatherInfo;

  const CurrentMaxMinTemInfo({
    super.key,
    required this.weatherInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  context.l10n.max,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
                Text(
                  weatherInfo.tempMax.toString(),
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
              width: 30,
              child: VerticalDivider(
                width: 10,
                thickness: 2,
              ),
            ),
            Column(
              children: [
                Text(
                  context.l10n.min,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
                Text(
                  weatherInfo.tempMin.toString(),
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
