// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherInfoResponseImpl _$$WeatherInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherInfoResponseImpl(
      coord: CoordResponse.fromJson(json['coord'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      main: WeatherMainResponse.fromJson(json['main'] as Map<String, dynamic>),
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$WeatherInfoResponseImplToJson(
        _$WeatherInfoResponseImpl instance) =>
    <String, dynamic>{
      'coord': instance.coord,
      'weather': instance.weather,
      'main': instance.main,
      'id': instance.id,
      'name': instance.name,
    };
