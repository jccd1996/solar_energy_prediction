import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solar_energy_prediction/features/home/data/models/weather_main_response/weather_main_response.dart';
import 'package:solar_energy_prediction/features/home/data/models/weather_response/weather_response.dart';
part 'weather_list_response.freezed.dart';

part 'weather_list_response.g.dart';
@freezed
class WeatherListResponse with _$WeatherListResponse {
  const factory WeatherListResponse({
    required int dt,
    required WeatherMainResponse main,
    required List<WeatherResponse> weather,
    @JsonKey(name: 'dt_txt')required String dtTxt,
  }) = _WeatherListResponse;

  factory WeatherListResponse.fromJson(Map<String, dynamic> json) => _$WeatherListResponseFromJson(json);
}