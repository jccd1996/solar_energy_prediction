import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_by_hour_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_info_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_info_entity.dart';

abstract interface class WeatherRepository {
  Future<WeatherInfoEntity> getWeather({
    required double lat,
    required double lon,
  });

  Future<WeatherFiveDayInfoEntity> getWeatherFiveDayByHour({
    required double lat,
    required double lon,
  });
}
