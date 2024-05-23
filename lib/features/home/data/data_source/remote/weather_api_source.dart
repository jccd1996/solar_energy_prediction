import 'package:solar_energy_prediction/features/home/data/data_source/remote/service/weather_service.dart';
import 'package:solar_energy_prediction/features/home/data/models/weather_five_day_response/weather_five_day_response.dart';
import 'package:solar_energy_prediction/features/home/data/models/weather_info_response/weather_info_response.dart';
import 'package:solar_energy_prediction/networking/data_source/api_response.dart';
import 'package:solar_energy_prediction/networking/data_source/api_response_mixin.dart';
import 'package:solar_energy_prediction/networking/dio_client.dart';

abstract interface class WeatherApiSource {
  Future<ApiResponse<WeatherInfoResponse>> getWeather({
    required double lat,
    required double lon,
  });

  Future<ApiResponse<WeatherFiveDayResponse>> getWeatherFiveDayByHour({
    required double lat,
    required double lon,
  });
}

class WeatherApiSourceImpl with ApiResponseHandler implements WeatherApiSource {
  late final WeatherService _service;

  WeatherApiSourceImpl(DioClient dioClient)
      : _service = WeatherService(dioClient.dio);

  @override
  Future<ApiResponse<WeatherInfoResponse>> getWeather({
    required double lat,
    required double lon,
  }) {
    return executeCall(
      _service.fetchWeather(lat: lat, lon: lon),
    );
  }

  @override
  Future<ApiResponse<WeatherFiveDayResponse>> getWeatherFiveDayByHour({
    required double lat,
    required double lon,
  }) {
    return executeCall(
      _service.fetchFiveDayForecast(lat: lat, lon: lon),
    );
  }
}
