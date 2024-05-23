import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
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
          title: '5-day weather forecast by hours',
          length: fiveDayInfo.weatherFiveDayByHour.length,
          itemBuilder: (context, index) {
            final weatherByHourItem = fiveDayInfo.weatherFiveDayByHour[index];
            return SizedBox(
              width: 100,
              child: Column(
                children: [
                  Text(weatherByHourItem.time),
                  CachedNetworkImage(
                    height: 50,
                    width: 50,
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
          title: '5-day weather forecast by day',
          length: fiveDayInfo.weatherFiveDayAverageByDay.length,
          height: 120,
          itemBuilder: (context, index) {
            final weatherByDayItem =
                fiveDayInfo.weatherFiveDayAverageByDay[index];
            return SizedBox(
              width: 100,
              child: Column(
                children: [
                  Text(weatherByDayItem.date),
                  const SizedBox(height: 4),
                  Text(weatherByDayItem.averageTemp),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Text('max'),
                          Text(weatherByDayItem.maxTemp),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                        width: 10.0,
                        child: VerticalDivider(
                          width: 1,
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ),
                      Column(
                        children: [
                          const Text('min'),
                          Text(weatherByDayItem.minTemp),
                        ],
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