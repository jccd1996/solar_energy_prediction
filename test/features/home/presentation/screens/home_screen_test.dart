import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:solar_energy_prediction/core/location_manager/domain/use_case/location_manager_use_case_provider.dart';
import 'package:solar_energy_prediction/core/theme/theme_provider.dart';
import 'package:solar_energy_prediction/features/home/domain/use_case/weather_use_case_provider.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/home_screen.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/widgets/draggable_weather_sheet.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/widgets/theme_button.dart';

import '../../../../utils/mock_generator/mocks_generator.mocks.dart';
import '../../../../utils/test_extension.dart';

void main() {
  late MockLocationManagerUseCase locationManagerUseCase;
  late MockWeatherUseCase weatherUseCase;
  late List<Override> overrides;

  setUp(() {
    locationManagerUseCase = MockLocationManagerUseCase();
    weatherUseCase = MockWeatherUseCase();
    overrides = [
      locationManagerUseCaseProvider.overrideWithValue(locationManagerUseCase),
      weatherUseCaseProvider.overrideWithValue(weatherUseCase),
    ];
  });

  group('''
  GIVEN $HomeScreen
      ''', () {
    testWidgets('THEN should render as expected', (WidgetTester tester) async {
      await tester.pumpApp(
        screen: const HomeScreen(),
        overrides: overrides,
      );
      expect(find.byKey(const Key('home_screen')), findsOneWidget);
      expect(find.byKey(const Key('google_map_section')), findsOneWidget);
      expect(find.byKey(const Key('home_theme_button')), findsOneWidget);
    });

    testWidgets('''
        WHEN $ThemeButton is pressed
        THEN the app theme should change
        ''', (WidgetTester tester) async {
      await tester.pumpApp(
        screen: const HomeScreen(),
        overrides: overrides,
      );
      await tester.pump();
      final element = tester.element(find.byKey(const Key('home_screen')));
      final container = ProviderScope.containerOf(element);
      //dark theme as default
      expect(container.read(themeModeProvider), ThemeMode.dark);

      //change the theme to light
      final themeButton = find.byKey(const Key('theme_button_on_tap'));
      await tester.tap(themeButton);
      await tester.pump();
      expect(container.read(themeModeProvider), ThemeMode.light);
    });

    testWidgets('''
        WHEN the user tap any location
        THEN should show a $DraggableWeatherSheet with weather information
        ''', (WidgetTester tester) async {
      await tester.pumpApp(
        screen: const HomeScreen(),
        overrides: overrides,
      );
      await tester.pump();
      final googleMapFinder = find.byType(GoogleMap);
      expect(googleMapFinder, findsOneWidget);

      await tester.tapAt(const Offset(300, 300));
      await tester.pumpAndSettle();
    });
  });
}
