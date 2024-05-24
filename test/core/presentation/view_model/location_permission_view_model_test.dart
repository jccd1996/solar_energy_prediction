import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:location/location.dart';
import 'package:mockito/mockito.dart';
import 'package:solar_energy_prediction/core/location_manager/domain/use_case/location_manager_use_case_provider.dart';
import 'package:solar_energy_prediction/core/location_manager/presentation/view_model/location_permission_view_model.dart';

import '../../../utils/mock_generator/mocks_generator.mocks.dart';

void main() {
  late ProviderContainer container;
  late MockLocationManagerUseCase mockLocationManagerUseCase;

  setUp(() {
    mockLocationManagerUseCase = MockLocationManagerUseCase();
    container = ProviderContainer(overrides: [
      locationManagerUseCaseProvider
          .overrideWithValue(mockLocationManagerUseCase),
    ]);
  });

  tearDown(() {
    container.dispose();
  });

  group('''
      GIVEN $LocationPermissionViewModel
      ''', () {
    test('''
        AND is in the loading state
        THEN the state should be loading
    ''', () async {
      final locationNotifier =
          container.read(locationPermissionViewModelProvider.notifier);
      expect(
          locationNotifier.state, const AsyncValue<PermissionStatus>.loading());
    });

    test('''
        AND the state is granted
        THEN the state should be PermissionStatus.granted
    ''', () async {
      when(mockLocationManagerUseCase.requestLocationPermission())
          .thenAnswer((_) async => PermissionStatus.granted);

      final locationNotifier =
          container.read(locationPermissionViewModelProvider.notifier);
      await container.read(locationPermissionViewModelProvider.future);

      expect(locationNotifier.state,
          const AsyncValue<PermissionStatus>.data(PermissionStatus.granted));
    });

    test('''
        AND the state is denied
        THEN the state should be PermissionStatus.denied
    ''', () async {
      when(mockLocationManagerUseCase.requestLocationPermission())
          .thenAnswer((_) async => PermissionStatus.denied);

      final locationNotifier =
          container.read(locationPermissionViewModelProvider.notifier);
      await container.read(locationPermissionViewModelProvider.future);

      expect(locationNotifier.state,
          const AsyncValue<PermissionStatus>.data(PermissionStatus.denied));
    });
  });
}
