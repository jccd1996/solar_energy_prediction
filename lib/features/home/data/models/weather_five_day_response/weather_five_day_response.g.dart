// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_five_day_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherFiveDayResponseImpl _$$WeatherFiveDayResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherFiveDayResponseImpl(
      cod: json['cod'] as String,
      message: (json['message'] as num).toInt(),
      cnt: (json['cnt'] as num).toInt(),
      list: (json['list'] as List<dynamic>)
          .map((e) => WeatherListResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      city: CityResponse.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherFiveDayResponseImplToJson(
        _$WeatherFiveDayResponseImpl instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list,
      'city': instance.city,
    };
