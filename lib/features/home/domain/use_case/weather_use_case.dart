import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_by_hour_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_info_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_info_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/repository/weather_repository.dart';

abstract interface class WeatherUseCase {
  Future<WeatherInfoEntity> getWeather({
    required double lat,
    required double lon,
  });

  Future<WeatherFiveDayInfoEntity> getWeatherFiveDayByHour({
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
  Future<WeatherFiveDayInfoEntity> getWeatherFiveDayByHour({
    required double lat,
    required double lon,
  }) async {
    return repository.getWeatherFiveDayByHour(
      lat: lat,
      lon: lon,
    );
/*    Map<String, List<double>> dailyTemperatures = {};

    // Agrupar las temperaturas por día
    for (var entry in result) {
      String date = entry.dtTxt.substring(0, 10);
      double temperature = entry.tempDouble;

      if (dailyTemperatures.containsKey(date)) {
        dailyTemperatures[date]!.add(temperature);
      } else {
        dailyTemperatures[date] = [temperature];
      }
    }

    // Calcular el promedio de temperaturas por día
    Map<String, double> dailyTemperatureAverages = {};
    dailyTemperatures.forEach((key, value) {
      double average = value.reduce((a, b) => a + b) / value.length;
      dailyTemperatureAverages[key] = average;
    });

    // Imprimir los promedios de temperatura diarios
    dailyTemperatureAverages.forEach((key, value) {
      print('Temperatura promedio el $key: $value');
    });
    return repository.getWeatherFiveDayByHour(
      lat: lat,
      lon: lon,
    );*/
  }
}
