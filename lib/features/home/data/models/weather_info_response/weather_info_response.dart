import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solar_energy_prediction/features/home/data/models/coord_response/coord_response.dart';
import 'package:solar_energy_prediction/features/home/data/models/weather_main_response/weather_main_response.dart';
import 'package:solar_energy_prediction/features/home/data/models/weather_response/weather_response.dart';

part 'weather_info_response.freezed.dart';

part 'weather_info_response.g.dart';

@freezed
class WeatherInfoResponse with _$WeatherInfoResponse {
  const factory WeatherInfoResponse({
    required CoordResponse coord,
    required List<WeatherResponse> weather,
    required WeatherMainResponse main,
    required int id,
    required String name,
  }) = _WeatherInfoResponse;

  factory WeatherInfoResponse.fromJson(Map<String, Object?> json) =>
      _$WeatherInfoResponseFromJson(json);
}
