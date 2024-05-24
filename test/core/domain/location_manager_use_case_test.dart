import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:location/location.dart';
import 'package:solar_energy_prediction/core/location_manager/domain/use_case/location_manager_use_case.dart';

import '../../utils/mock_generator/mocks_generator.mocks.dart';

void main() {
  late LocationManagerUseCaseImpl useCase;
  late MockLocationManagerRepository mockRepository;

  setUp(() {
    mockRepository = MockLocationManagerRepository();
    useCase = LocationManagerUseCaseImpl(mockRepository);
  });

  group('''
      GIVEN $LocationManagerUseCase
     ''', () {
    test('THEN should request location permission from repository', () async {
      const expectedStatus = PermissionStatus.granted;
      when(mockRepository.requestLocationPermission())
          .thenAnswer((_) async => expectedStatus);

      final result = await useCase.requestLocationPermission();

      expect(result, expectedStatus);
      verify(mockRepository.requestLocationPermission()).called(1);
    });

    test('THEN should handle permission denied', () async {
      const expectedStatus = PermissionStatus.denied;
      when(mockRepository.requestLocationPermission())
          .thenAnswer((_) async => expectedStatus);

      final result = await useCase.requestLocationPermission();

      expect(result, expectedStatus);
      verify(mockRepository.requestLocationPermission()).called(1);
    });

    test('THEN should handle permission denied forever', () async {
      const expectedStatus = PermissionStatus.deniedForever;
      when(mockRepository.requestLocationPermission())
          .thenAnswer((_) async => expectedStatus);

      final result = await useCase.requestLocationPermission();

      expect(result, expectedStatus);
      verify(mockRepository.requestLocationPermission()).called(1);
    });

    test('THEN should handle permission granted', () async {
      const expectedStatus = PermissionStatus.granted;
      when(mockRepository.requestLocationPermission())
          .thenAnswer((_) async => expectedStatus);

      final result = await useCase.requestLocationPermission();

      expect(result, expectedStatus);
      verify(mockRepository.requestLocationPermission()).called(1);
    });

    test('THEN should handle permission denied', () async {
      const expectedStatus = PermissionStatus.denied;
      when(mockRepository.requestLocationPermission())
          .thenAnswer((_) async => expectedStatus);

      final result = await useCase.requestLocationPermission();

      expect(result, expectedStatus);
      verify(mockRepository.requestLocationPermission()).called(1);
    });

    test(
        'THEN should return current location when getCurrentLocation is called',
        () async {
      final locationData = LocationData.fromMap({
        'latitude': 37.7749,
        'longitude': -122.4194,
        'accuracy': 100.0,
        'altitude': 0.0,
        'speed': 0.0,
        'speed_accuracy': 0.0,
        'heading': 0.0,
        'time': 10000.0,
      });

      when(mockRepository.getCurrentLocation())
          .thenAnswer((_) async => locationData);

      final result = await useCase.getCurrentLocation();

      expect(result, locationData);
      verify(mockRepository.getCurrentLocation()).called(1);
      verifyNoMoreInteractions(mockRepository);
    });
  });
}
