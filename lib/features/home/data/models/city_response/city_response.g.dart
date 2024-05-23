// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityResponseImpl _$$CityResponseImplFromJson(Map<String, dynamic> json) =>
    _$CityResponseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      coord: CoordResponse.fromJson(json['coord'] as Map<String, dynamic>),
      country: json['country'] as String,
      population: (json['population'] as num).toInt(),
      timezone: (json['timezone'] as num).toInt(),
    );

Map<String, dynamic> _$$CityResponseImplToJson(_$CityResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coord': instance.coord,
      'country': instance.country,
      'population': instance.population,
      'timezone': instance.timezone,
    };
