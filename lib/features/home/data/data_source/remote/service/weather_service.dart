import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:solar_energy_prediction/features/home/data/models/weather_five_day_response/weather_five_day_response.dart';
import 'package:solar_energy_prediction/features/home/data/models/weather_info_response/weather_info_response.dart';

part 'weather_service.g.dart';

@RestApi()
abstract class WeatherService {
  factory WeatherService(Dio dio) = _WeatherService;

  @GET("weather")
  Future<WeatherInfoResponse> fetchWeather({
    @Query('lat') required double lat,
    @Query('lon') required double lon,
  });

  @GET("forecast")
  Future<WeatherFiveDayResponse> fetchFiveDayForecast({
    @Query('lat') required double lat,
    @Query('lon') required double lon,
  });
}
