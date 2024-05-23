import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solar_energy_prediction/features/home/data/models/city_response/city_response.dart';
import 'package:solar_energy_prediction/features/home/data/models/weather_list_response/weather_list_response.dart';
part 'weather_five_day_response.freezed.dart';

part 'weather_five_day_response.g.dart';
@freezed
class WeatherFiveDayResponse with _$WeatherFiveDayResponse {
  const factory WeatherFiveDayResponse({
    required String cod,
    required int message,
    required int cnt,
    required List<WeatherListResponse> list,
    required CityResponse city,
  }) = _WeatherFiveDayResponse;

  factory WeatherFiveDayResponse.fromJson(Map<String, dynamic> json) => _$WeatherFiveDayResponseFromJson(json);
}