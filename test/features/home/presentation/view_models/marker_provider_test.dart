import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:solar_energy_prediction/features/home/presentation/view_models/marker_provider.dart';

void main() {
  group('GIVEN $markerProvider', () {
    test('''
        WHEN markerProvider is called for the first time
        THEN the state should be null
        ''', () {
      final container = ProviderContainer();
      final marker = container.read(markerProvider);
      expect(marker, isNull);
    });

    test('''
        WHEN markerProvider is called
        AND the state is update
        THEN the state should have the new value
        ''', () {
      final container = ProviderContainer();
      const marker = Marker(markerId: MarkerId('test_id'));
      container.read(markerProvider.notifier).state = marker;
      expect(container.read(markerProvider), marker);
    });
  });
}
