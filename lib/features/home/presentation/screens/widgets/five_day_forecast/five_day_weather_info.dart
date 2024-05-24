import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:solar_energy_prediction/core/extensions/app_context_extension.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_info_entity.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/widgets/five_day_forecast/forecast_section.dart';

class FiveDayWeatherInfo extends StatelessWidget {
  final WeatherFiveDayInfoEntity fiveDayInfo;

  const FiveDayWeatherInfo({super.key, required this.fiveDayInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ForecastSection(
          title: context.l10n.fiveDAyWeatherForecastByHours,
          length: fiveDayInfo.weatherFiveDayByHour.length,
          itemBuilder: (context, index) {
            final weatherByHourItem = fiveDayInfo.weatherFiveDayByHour[index];
            return SizedBox(
              width: 100,
              child: Column(
                children: [
                  Text(weatherByHourItem.time),
                  CachedNetworkImage(
                    height: 40,
                    width: 40,
                    fit: BoxFit.contain,
                    imageUrl: weatherByHourItem.iconUrl,
                  ),
                  Text(weatherByHourItem.temp.toString()),
                ],
              ),
            );
          },
        ),
        const Divider(height: 24.0),
        ForecastSection(
          title: context.l10n.fiveDAyWeatherForecastByDay,
          length: fiveDayInfo.weatherFiveDayAverageByDay.length,
          height: 120,
          itemBuilder: (context, index) {
            final weatherByDayItem =
                fiveDayInfo.weatherFiveDayAverageByDay[index];
            return SizedBox(
              width: 110,
              child: Column(
                children: [
                  Text(weatherByDayItem.date),
                  const SizedBox(height: 4),
                  Text(weatherByDayItem.averageTemp),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(context.l10n.max),
                            Text(weatherByDayItem.maxTemp),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                        width: 1.0,
                        child: VerticalDivider(
                          width: 1,
                          thickness: 1,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(context.l10n.min),
                            Text(weatherByDayItem.minTemp),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
