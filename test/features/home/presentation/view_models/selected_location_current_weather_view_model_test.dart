import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solar_energy_prediction/features/home/domain/use_case/weather_use_case.dart';
import 'package:solar_energy_prediction/features/home/domain/use_case/weather_use_case_provider.dart';
import 'package:solar_energy_prediction/features/home/presentation/view_models/selected_location_current_weather_view_model.dart';

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

  group('GIVEN $SelectedLocationCurrentWeatherViewModel', () {
    test('''
    AND selectedLocationCurrentWeatherViewModelProvider is called for the first time
    THEN the value should be null
    ''', () {
      final viewModel =
          container.read(selectedLocationCurrentWeatherViewModelProvider);
      expect(viewModel.value, null);
    });

    test('''
    AND updateWeather is called 
    THEN the value should be the current weather
    ''', () async {
      const lat = 1.0;
      const lon = 1.0;
      when(mockWeatherUseCase.getWeather(
        lat: lat,
        lon: lon,
      )).thenAnswer((_) async => FakeWeatherEntities.fakeCurrentWeather);

      await container
          .read(selectedLocationCurrentWeatherViewModelProvider.notifier)
          .updateWeather(lat, lon);

      final viewModel =
          container.read(selectedLocationCurrentWeatherViewModelProvider);

      expect(viewModel.value, FakeWeatherEntities.fakeCurrentWeather);
    });

    test('''
    AND selectedLocationCurrentWeatherViewModelProvider is called
    AND the call throw
    THEN the state should be error
    ''', () async {
      const lat = 1.0;
      const lon = 1.0;
      when(mockWeatherUseCase.getWeather(
        lat: lat,
        lon: lon,
      )).thenThrow(Exception());

      await container
          .read(selectedLocationCurrentWeatherViewModelProvider.notifier)
          .updateWeather(lat, lon);

      final viewModel =
          container.read(selectedLocationCurrentWeatherViewModelProvider);

      expect(viewModel.hasError, true);
    });
  });
}
