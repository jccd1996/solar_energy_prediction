import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:solar_energy_prediction/features/home/domain/use_case/weather_use_case.dart';

import '../../../utils/mock_generator/mocks_generator.mocks.dart';
import '../mock_data/weather/fake_weather_entities.dart';

void main() {
  late WeatherUseCaseImpl useCase;
  late MockWeatherRepository mockWeatherRepository;

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    useCase = WeatherUseCaseImpl(mockWeatherRepository);
  });

  group('GIVEN $WeatherUseCase', () {
    const double lat = 37.7749;
    const double lon = -122.4194;

    test('''
        WHEN getWeather is called 
        THEN should returns WeatherInfoEntity
        ''', () async {
      final expectedResult = FakeWeatherEntities.fakeCurrentWeather;
      when(mockWeatherRepository.getWeather(lat: lat, lon: lon))
          .thenAnswer((_) async => expectedResult);

      final result = await useCase.getWeather(lat: lat, lon: lon);

      expect(result, expectedResult);
      verify(mockWeatherRepository.getWeather(lat: lat, lon: lon)).called(1);
    });

    test('''
        WHEN getWeatherFiveDayByHour is called 
        THEN should returns WeatherInfoEntity
        ''', () async {
      final expectedResult = FakeWeatherEntities.fakeFiveDayInfoWeather;

      when(mockWeatherRepository.getWeatherFiveDayForecast(lat: lat, lon: lon))
          .thenAnswer((_) async => expectedResult);

      final result = await useCase.getWeatherFiveForecast(lat: lat, lon: lon);

      expect(result, expectedResult);
      verify(mockWeatherRepository.getWeatherFiveDayForecast(
              lat: lat, lon: lon))
          .called(1);
    });
  });
}
