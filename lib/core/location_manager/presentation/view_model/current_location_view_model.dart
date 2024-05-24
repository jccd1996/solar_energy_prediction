import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:location/location.dart';
import 'package:solar_energy_prediction/core/location_manager/domain/use_case/location_manager_use_case_provider.dart';

final currentLocationViewModelProvider =
    AsyncNotifierProvider<CurrentLocationViewModel, LocationData>(
  () => CurrentLocationViewModel(),
);

class CurrentLocationViewModel extends AsyncNotifier<LocationData> {
  @override
  Future<LocationData> build() async {
    return await currentLocation();
  }

  Future<LocationData> currentLocation() async {
    var status =
        await ref.read(locationManagerUseCaseProvider).getCurrentLocation();
    return status;
  }
}
