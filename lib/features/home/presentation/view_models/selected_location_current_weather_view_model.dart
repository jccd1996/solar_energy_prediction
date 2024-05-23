import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_info_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/use_case/weather_use_case_provider.dart';

final selectedLocationCurrentWeatherViewModelProvider = AsyncNotifierProvider<
    SelectedLocationCurrentWeatherViewModel, WeatherInfoEntity?>(
  SelectedLocationCurrentWeatherViewModel.new,
);

class SelectedLocationCurrentWeatherViewModel
    extends AsyncNotifier<WeatherInfoEntity?> {
  @override
  FutureOr<WeatherInfoEntity?> build() {
    return null;
  }

  Future<void> updateWeather(double lat, double lon) async {
    state = const AsyncValue.loading();
    try {
      final weather = await ref.read(weatherUseCaseProvider).getWeather(
            lat: lat,
            lon: lon,
          );
      state = AsyncValue.data(weather);
    } catch (error, stack) {
      state = AsyncValue.error(error, stack);
    }
  }
}
