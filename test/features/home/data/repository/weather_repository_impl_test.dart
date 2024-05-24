import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:solar_energy_prediction/features/home/data/models/weather_five_day_response/weather_five_day_response.dart';
import 'package:solar_energy_prediction/features/home/data/models/weather_info_response/weather_info_response.dart';
import 'package:solar_energy_prediction/features/home/data/repository/weather_repository_impl.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_info_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_info_entity.dart';
import 'package:solar_energy_prediction/networking/data_source/api_response.dart';

import '../../../../utils/json_utils.dart';
import '../../../../utils/mock_generator/mocks_generator.mocks.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  late WeatherRepositoryImpl weatherRepository;
  late MockWeatherApiSource mockWeatherApiSource;
  late WeatherInfoResponse weatherInfoResponse;
  late WeatherFiveDayResponse weatherFiveDayResponse;

  setUp(() async {
    dotenv.testLoad(fileInput: 'BASE_ICON_URL = https://baseiconurl.test');
    mockWeatherApiSource = MockWeatherApiSource();
    weatherRepository = WeatherRepositoryImpl(mockWeatherApiSource);

    weatherInfoResponse =
        await JsonUtils.convertJsonToResponse<WeatherInfoResponse>(
      path: 'features/home/mock_data/jsons/weather.json',
      fromJson: WeatherInfoResponse.fromJson,
    );

    weatherFiveDayResponse =
        await JsonUtils.convertJsonToResponse<WeatherFiveDayResponse>(
      path: 'features/home/mock_data/jsons/forecast.json',
      fromJson: WeatherFiveDayResponse.fromJson,
    );
    provideDummy<ApiResponse<WeatherInfoResponse>>(
        SuccessApiResponse(weatherInfoResponse));

    provideDummy<ApiResponse<WeatherFiveDayResponse>>(
        SuccessApiResponse(weatherFiveDayResponse));
  });

  group('GIVEN $WeatherRepositoryImpl', () {
    const double lat = 37.7749;
    const double lon = -122.4194;

    test('''
        WHEN getWeather is called'
        THEN should return an instance of $WeatherInfoEntity on the success
        ''', () async {
      when(mockWeatherApiSource.getWeather(
        lat: lat,
        lon: lon,
      )).thenAnswer((_) async => SuccessApiResponse(weatherInfoResponse));

      final result = await weatherRepository.getWeather(
        lat: lat,
        lon: lon,
      );

      expect(result, isInstanceOf<WeatherInfoEntity>());
      verify(mockWeatherApiSource.getWeather(lat: lat, lon: lon)).called(1);
    });

    test('''
        WHEN getWeatherFiveDayByHour is called'
        THEN should return an instance of $WeatherFiveDayInfoEntity on the success
        ''', () async {
      when(mockWeatherApiSource.getWeatherFiveDayByHour(
        lat: lat,
        lon: lon,
      )).thenAnswer((_) async => SuccessApiResponse(weatherFiveDayResponse));

      final result =
          await weatherRepository.getWeatherFiveDayForecast(lat: lat, lon: lon);

      expect(result, isInstanceOf<WeatherFiveDayInfoEntity>());
      verify(mockWeatherApiSource.getWeatherFiveDayByHour(lat: lat, lon: lon))
          .called(1);
    });

    test('''
        WHEN getWeather is called
        AND it fails
        THEN should return an instance of $ErrorApiResponse on the error
        ''', () async {
      when(mockWeatherApiSource.getWeather(
        lat: lat,
        lon: lon,
      )).thenAnswer(
        (_) async =>
            ErrorApiResponse(httpErrorMessage: 'error', httpStatusCode: 400),
      );

      expect(() => weatherRepository.getWeather(lat: lat, lon: lon),
          throwsA(isA<ErrorApiResponse<WeatherInfoResponse>>()));

      verify(mockWeatherApiSource.getWeather(lat: lat, lon: lon)).called(1);
    });

    test('''
        WHEN getWeatherFiveDayForecast is called
        AND it fails
        THEN should return an instance of $ErrorApiResponse on the error
        ''', () async {
      when(mockWeatherApiSource.getWeatherFiveDayByHour(
        lat: lat,
        lon: lon,
      )).thenAnswer(
        (_) async =>
            ErrorApiResponse(httpErrorMessage: 'error', httpStatusCode: 400),
      );

      expect(
          () => weatherRepository.getWeatherFiveDayForecast(lat: lat, lon: lon),
          throwsA(isA<ErrorApiResponse<WeatherFiveDayResponse>>()));

      verify(mockWeatherApiSource.getWeatherFiveDayByHour(lat: lat, lon: lon))
          .called(1);
    });
  });
}
