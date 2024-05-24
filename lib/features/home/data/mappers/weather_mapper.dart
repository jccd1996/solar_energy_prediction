import 'package:solar_energy_prediction/core/base/base_mapper.dart';
import 'package:solar_energy_prediction/core/constants/enviroment_values.dart';
import 'package:solar_energy_prediction/core/constants/weather_constants.dart';
import 'package:solar_energy_prediction/features/home/data/models/weather_info_response/weather_info_response.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_info_entity.dart';

class WeatherMapper
    with BaseResponseMapper<WeatherInfoEntity, WeatherInfoResponse> {
  @override
  WeatherInfoEntity fromResponseToEntity(WeatherInfoResponse response) {
    final baseIconUrl = Environment.baseIconUrl;
    return WeatherInfoEntity(
      lat: response.coord.lat,
      lon: response.coord.lon,
      name: response.name,
      description: response.weather.first.description,
      iconUrl: '$baseIconUrl${response.weather.first.icon}.png',
      main: response.weather.first.main,
      temp: '${response.main.temp}${WeatherConstants.celsiusSymbol}',
      tempMax: '${response.main.tempMax}${WeatherConstants.celsiusSymbol}',
      tempMin: '${response.main.tempMin}${WeatherConstants.celsiusSymbol}',
    );
  }
}
