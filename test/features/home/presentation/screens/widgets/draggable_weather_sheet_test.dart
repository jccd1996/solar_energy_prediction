import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:solar_energy_prediction/features/home/domain/use_case/weather_use_case_provider.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/widgets/current_weather/current_weather_info.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/widgets/draggable_weather_sheet.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/widgets/error_template.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/widgets/five_day_forecast/five_day_weather_info.dart';
import 'package:solar_energy_prediction/features/home/presentation/view_models/selected_location_current_weather_view_model.dart';
import 'package:solar_energy_prediction/features/home/presentation/view_models/selected_location_five_day_weather_view_model.dart';

import '../../../../../utils/mock_generator/mocks_generator.mocks.dart';
import '../../../../../utils/test_extension.dart';
import '../../../mock_data/weather/fake_weather_entities.dart';

void main() {
  late MockWeatherUseCase weatherUseCase;
  late List<Override> overrides;

  setUp(() {
    weatherUseCase = MockWeatherUseCase();
    overrides = [
      weatherUseCaseProvider.overrideWithValue(weatherUseCase),
    ];
  });

  group('''
  GIVEN $DraggableWeatherSheet
      ''', () {
    testWidgets(
        'THEN should render as expected when the current and forecast view models have data',
        (WidgetTester tester) async {
      const lat = 1.0;
      const lon = 1.0;
      when(weatherUseCase.getWeather(
        lat: lat,
        lon: lon,
      )).thenAnswer((_) async => FakeWeatherEntities.fakeCurrentWeather);
      when(weatherUseCase.getWeatherFiveForecast(
        lat: lat,
        lon: lon,
      )).thenAnswer((_) async => FakeWeatherEntities.fakeFiveDayInfoWeather);
      final controller = DraggableScrollableController();

      await tester.pumpApp(
        screen: Scaffold(
          body: Stack(
            children: [
              DraggableWeatherSheet(
                draggableScrollableController: controller,
              ),
            ],
          ),
        ),
        overrides: overrides,
      );

      controller.animateTo(
        0.5,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      await tester.pumpAndSettle();
      final element = tester.element(find.byType(DraggableWeatherSheet));
      final container = ProviderScope.containerOf(element);

      container
          .read(selectedLocationCurrentWeatherViewModelProvider.notifier)
          .updateWeather(lat, lon);
      container
          .read(selectedLocationFiveDayWeatherViewModelProvider.notifier)
          .updateFiveDayWeather(lat, lon);
      await tester.pumpAndSettle();

      await tester.drag(
          find.byType(DraggableScrollableSheet), const Offset(0, -300));
      await tester.pump();

      expect(find.byType(CurrentWeatherInfo), findsOneWidget);
      expect(find.byType(FiveDayWeatherInfo), findsOneWidget);
    });

    testWidgets(
        'THEN should render as expected but show error template when the current and forecast view models have error',
        (WidgetTester tester) async {
      const lat = 1.0;
      const lon = 1.0;
      when(weatherUseCase.getWeather(
        lat: lat,
        lon: lon,
      )).thenThrow(Exception());
      when(weatherUseCase.getWeatherFiveForecast(
        lat: lat,
        lon: lon,
      )).thenThrow(Exception());
      final controller = DraggableScrollableController();

      await tester.pumpApp(
        screen: Scaffold(
          body: Stack(
            children: [
              DraggableWeatherSheet(
                draggableScrollableController: controller,
              ),
            ],
          ),
        ),
        overrides: overrides,
      );

      controller.animateTo(
        0.5,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      await tester.pumpAndSettle();
      final element = tester.element(find.byType(DraggableWeatherSheet));
      final container = ProviderScope.containerOf(element);

      container
          .read(selectedLocationCurrentWeatherViewModelProvider.notifier)
          .updateWeather(lat, lon);
      container
          .read(selectedLocationFiveDayWeatherViewModelProvider.notifier)
          .updateFiveDayWeather(lat, lon);
      await tester.pumpAndSettle();

      await tester.drag(
          find.byType(DraggableScrollableSheet), const Offset(0, -300));
      await tester.pump();

      expect(find.byType(ErrorTemplate), findsNWidgets(2));
    });
  });
}
