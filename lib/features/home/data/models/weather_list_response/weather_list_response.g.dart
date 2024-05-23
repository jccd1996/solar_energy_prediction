// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherListResponseImpl _$$WeatherListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherListResponseImpl(
      dt: (json['dt'] as num).toInt(),
      main: WeatherMainResponse.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      dtTxt: json['dt_txt'] as String,
    );

Map<String, dynamic> _$$WeatherListResponseImplToJson(
        _$WeatherListResponseImpl instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
      'dt_txt': instance.dtTxt,
    };
