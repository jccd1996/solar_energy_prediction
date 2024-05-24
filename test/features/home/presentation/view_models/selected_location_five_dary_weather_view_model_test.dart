import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solar_energy_prediction/features/home/domain/use_case/weather_use_case.dart';
import 'package:solar_energy_prediction/features/home/domain/use_case/weather_use_case_provider.dart';
import 'package:solar_energy_prediction/features/home/presentation/view_models/selected_location_five_day_weather_view_model.dart';

import '../../../../utils/mock_generator/mocks_generator.mocks.dart';
import '../../mock_data/weather/fake_weather_entities.dart';

void main() {
  late WeatherUseCase mockWeatherUseCase;
  late ProviderContainer container;

  setUp(() {
    mockWeatherUseCase = MockWeatherUseCase();
    container = ProviderContainer(
      overrides: [
        weatherUseCaseProvider.overrideWithValue(mockWeatherUseCase),
      ],
    );
  });

  group('GIVEN $SelectedLocationFiveDayWeatherViewModel', () {
    test('''
    AND selectedLocationFiveDayWeatherViewModelProvider is called for the first time
    THEN the value should be null
    ''', () {
      final viewModel =
          container.read(selectedLocationFiveDayWeatherViewModelProvider);
      expect(viewModel.value, null);
    });

    test('''
    AND getWeatherFiveDayByHour is called 
    THEN the value should be the current weather
    ''', () async {
      const lat = 1.0;
      const lon = 1.0;
      when(mockWeatherUseCase.getWeatherFiveForecast(
        lat: lat,
        lon: lon,
      )).thenAnswer((_) async => FakeWeatherEntities.fakeFiveDayInfoWeather);

      await container
          .read(selectedLocationFiveDayWeatherViewModelProvider.notifier)
          .updateFiveDayWeather(lat, lon);

      final viewModel =
          container.read(selectedLocationFiveDayWeatherViewModelProvider);

      expect(viewModel.value, FakeWeatherEntities.fakeFiveDayInfoWeather);
    });

    test('''
    AND selectedLocationFiveDayWeatherViewModelProvider is called
    AND the call throw
    THEN the state should be error
    ''', () async {
      const lat = 1.0;
      const lon = 1.0;
      when(mockWeatherUseCase.getWeatherFiveForecast(
        lat: lat,
        lon: lon,
      )).thenThrow(Exception());

      await container
          .read(selectedLocationFiveDayWeatherViewModelProvider.notifier)
          .updateFiveDayWeather(lat, lon);

      final viewModel =
          container.read(selectedLocationFiveDayWeatherViewModelProvider);

      expect(viewModel.hasError, true);
    });
  });
}
