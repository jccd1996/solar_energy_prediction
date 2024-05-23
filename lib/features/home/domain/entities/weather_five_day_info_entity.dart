import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_average_by_day_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_by_hour_entity.dart';

class WeatherFiveDayInfoEntity {
  final List<WeatherFiveDayByHourEntity> weatherFiveDayByHour;
  final List<WeatherFiveDayByAverageDayEntity> weatherFiveDayAverageByDay;

  WeatherFiveDayInfoEntity({
    required this.weatherFiveDayByHour,
    required this.weatherFiveDayAverageByDay,
  });
}
