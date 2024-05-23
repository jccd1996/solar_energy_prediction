import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_response.freezed.dart';

part 'weather_response.g.dart';
@freezed
class WeatherResponse with _$WeatherResponse {
  const factory WeatherResponse({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}
