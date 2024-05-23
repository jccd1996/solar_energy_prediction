import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solar_energy_prediction/features/home/data/models/coord_response/coord_response.dart';
part 'city_response.freezed.dart';

part 'city_response.g.dart';
@freezed
class CityResponse with _$CityResponse {
  const factory CityResponse({
    required int id,
    required String name,
    required CoordResponse coord,
    required String country,
    required int population,
    required int timezone,
  }) = _CityResponse;

  factory CityResponse.fromJson(Map<String, dynamic> json) => _$CityResponseFromJson(json);
}