import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_info_entity.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/widgets/current_weather/current_max_min_tem.dart';

class CurrentWeatherInfo extends StatelessWidget {
  final WeatherInfoEntity weatherInfo;

  const CurrentWeatherInfo({super.key, required this.weatherInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                weatherInfo.name.toUpperCase(),
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            CachedNetworkImage(
              height: 50,
              width: 50,
              fit: BoxFit.contain,
              imageUrl: weatherInfo.iconUrl,
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          weatherInfo.description.toUpperCase(),
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        Text(
          weatherInfo.temp.toString(),
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        CurrentMaxMinTemInfo(weatherInfo: weatherInfo),
      ],
    );
  }
}
