import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_info_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_info_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/repository/weather_repository.dart';

abstract interface class WeatherUseCase {
  Future<WeatherInfoEntity> getWeather({
    required double lat,
    required double lon,
  });

  Future<WeatherFiveDayInfoEntity> getWeatherFiveForecast({
    required double lat,
    required double lon,
  });
}

class WeatherUseCaseImpl implements WeatherUseCase {
  final WeatherRepository repository;

  WeatherUseCaseImpl(this.repository);

  @override
  Future<WeatherInfoEntity> getWeather({
    required double lat,
    required double lon,
  }) {
    return repository.getWeather(
      lat: lat,
      lon: lon,
    );
  }

  @override
  Future<WeatherFiveDayInfoEntity> getWeatherFiveForecast({
    required double lat,
    required double lon,
  }) async {
    return repository.getWeatherFiveDayForecast(
      lat: lat,
      lon: lon,
    );
  }
}
