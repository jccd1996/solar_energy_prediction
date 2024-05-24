import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:location/location.dart';
import 'package:mockito/mockito.dart';
import 'package:solar_energy_prediction/core/location_manager/domain/use_case/location_manager_use_case_provider.dart';
import 'package:solar_energy_prediction/features/request_permission/presentation/screens/request_permission_screen.dart';
import '../../../../utils/mock_generator/mocks_generator.mocks.dart';
import '../../../../utils/test_extension.dart';

void main() {
  final locationManagerUseCase = MockLocationManagerUseCase();
  final overrides = [
    locationManagerUseCaseProvider.overrideWithValue(locationManagerUseCase),
  ];

  group('''
      GIVEN $RequestPermissionScreen
      ''', () {
    testWidgets('''
      AND the permission status is denied
      THEN should show request permission button, continue button
      AND a text with user experience regarding permissions
      ''', (WidgetTester tester) async {
      when(locationManagerUseCase.requestLocationPermission())
          .thenAnswer((_) async => PermissionStatus.denied);

      await tester.pumpApp(
        screen: const RequestPermissionScreen(),
        overrides: overrides,
      );
      expect(
          find.byKey(const Key('request_permission_loader')), findsOneWidget);

      await tester.pump();

      expect(find.byKey(const Key('denied_info')), findsOneWidget);
    });

    testWidgets('''
      AND the permission status is granted
      THEN should show navigate to the home screen
      AND a text with user experience regarding permissions
      ''', (WidgetTester tester) async {
      when(locationManagerUseCase.requestLocationPermission())
          .thenAnswer((_) async => PermissionStatus.granted);

      await tester.pumpApp(
        screen: const RequestPermissionScreen(),
        overrides: overrides,
      );

      await tester.pumpAndSettle(const Duration(milliseconds: 1));
      expect(find.byKey(const Key('request_permission_screen')), findsNothing);
    });

    testWidgets('''
      AND the permission status thrown
      THEN should show the error template
      ''', (WidgetTester tester) async {
      when(locationManagerUseCase.requestLocationPermission())
          .thenThrow(Exception());

      await tester.pumpApp(
        screen: const RequestPermissionScreen(),
        overrides: overrides,
      );

      await tester.pump();
      expect(find.byKey(const Key('request_permission_error')), findsOneWidget);
    });
  });
}
