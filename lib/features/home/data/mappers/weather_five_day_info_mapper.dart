import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:solar_energy_prediction/core/base/base_mapper.dart';
import 'package:solar_energy_prediction/core/constants/enviroment_values.dart';
import 'package:solar_energy_prediction/core/constants/weather_constants.dart';
import 'package:solar_energy_prediction/core/extensions/string_extension.dart';
import 'package:solar_energy_prediction/features/home/data/models/weather_five_day_response/weather_five_day_response.dart';
import 'package:solar_energy_prediction/features/home/data/models/weather_info_response/weather_info_response.dart';
import 'package:solar_energy_prediction/features/home/data/models/weather_list_response/weather_list_response.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_average_by_day_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_by_hour_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_info_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_info_entity.dart';

class WeatherFiveDayInfoMapper
    with BaseResponseMapper<WeatherFiveDayInfoEntity, WeatherFiveDayResponse> {
  @override
  WeatherFiveDayInfoEntity fromResponseToEntity(
      WeatherFiveDayResponse response) {
    final baseIconUrl = Environment.baseIconUrl;
    final fiveDayByHour = response.list
        .map(
          (e) => WeatherFiveDayByHourEntity(
            temp: '${e.main.temp.round()}${WeatherConstants.celsiusSymbol}',
            time: e.dtTxt.toEHA(),
            iconUrl: '$baseIconUrl${e.weather.first.icon}.png',
            dtTxt: e.dtTxt,
            tempDouble: e.main.temp,
          ),
        )
        .toList();

    return WeatherFiveDayInfoEntity(
      weatherFiveDayByHour: fiveDayByHour,
      weatherFiveDayAverageByDay: calculateAveragePerDay(response.list),
    );
  }

  List<WeatherFiveDayByAverageDayEntity> calculateAveragePerDay(
      List<WeatherListResponse> weatherList) {
    Map<String, List<double>> dailyTemperatures = {};

    //Group temperatures by day
    for (var entry in weatherList) {
      String date = entry.dtTxt.substring(0, 10);
      double temperature = entry.main.temp;

      if (dailyTemperatures.containsKey(date)) {
        dailyTemperatures[date]!.add(temperature);
      } else {
        dailyTemperatures[date] = [temperature];
      }
    }

    //Calculate average, min and max temperatures per day
    List<WeatherFiveDayByAverageDayEntity> dailyTemperatureStats = [];
    dailyTemperatures.forEach((date, value) {
      double average = value.reduce((a, b) => a + b) / value.length;
      double minTemp = value.reduce((a, b) => a < b ? a : b);
      double maxTemp = value.reduce((a, b) => a > b ? a : b);
      dailyTemperatureStats.add(WeatherFiveDayByAverageDayEntity(
        date: date.toED(),
        averageTemp: '${average.round()}${WeatherConstants.celsiusSymbol}',
        minTemp: '${minTemp.round()}${WeatherConstants.celsiusSymbol}',
        maxTemp: '${maxTemp.round()}${WeatherConstants.celsiusSymbol}',
      ));
    });
    return dailyTemperatureStats;
  }
}
