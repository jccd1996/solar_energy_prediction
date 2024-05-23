import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_by_hour_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_info_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_info_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/use_case/weather_use_case_provider.dart';

final selectedLocationFiveDayWeatherViewModelProvider = AsyncNotifierProvider<
    SelectedLocationFiveDayWeatherViewModel, WeatherFiveDayInfoEntity?>(
  SelectedLocationFiveDayWeatherViewModel.new,
);

class SelectedLocationFiveDayWeatherViewModel
    extends AsyncNotifier<WeatherFiveDayInfoEntity?> {
  @override
  FutureOr<WeatherFiveDayInfoEntity?> build() {
    return null;
  }

  Future<void> updateFiveDayWeather(double lat, double lon) async {
    state = const AsyncValue.loading();
    try {
      final weather =
          await ref.read(weatherUseCaseProvider).getWeatherFiveDayByHour(
                lat: lat,
                lon: lon,
              );
      state = AsyncValue.data(weather);
    } catch (error, stack) {
      state = AsyncValue.error(error, stack);
    }
  }
}
