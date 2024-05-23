import 'package:solar_energy_prediction/features/home/data/data_source/remote/weather_api_source.dart';
import 'package:solar_energy_prediction/features/home/data/mappers/weather_five_day_info_mapper.dart';
import 'package:solar_energy_prediction/features/home/data/mappers/weather_mapper.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_by_hour_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_info_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_info_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/repository/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApiSource apiSource;

  WeatherRepositoryImpl(this.apiSource);

  @override
  Future<WeatherInfoEntity> getWeather({
    required double lat,
    required double lon,
  }) async {
    final response = await apiSource.getWeather(
      lat: lat,
      lon: lon,
    );
    return response.when(
      onSuccess: (data) => WeatherMapper().fromResponseToEntity(data.body),
      onError: (e) => throw e,
    );
  }

  @override
  Future<WeatherFiveDayInfoEntity> getWeatherFiveDayByHour({
    required double lat,
    required double lon,
  }) async {
    final response = await apiSource.getWeatherFiveDayByHour(
      lat: lat,
      lon: lon,
    );
    return response.when(
      onSuccess: (success) =>
          WeatherFiveDayInfoMapper().fromResponseToEntity(success.body),
      onError: (e) => throw e,
    );
  }
}
