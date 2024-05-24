import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:location/location.dart';
import 'package:solar_energy_prediction/core/location_manager/domain/use_case/location_manager_use_case_provider.dart';

final locationPermissionViewModelProvider =
    AsyncNotifierProvider<LocationPermissionViewModel, PermissionStatus>(
  () => LocationPermissionViewModel(),
);

class LocationPermissionViewModel extends AsyncNotifier<PermissionStatus> {
  @override
  Future<PermissionStatus> build() async {
    return await checkPermissionStatus();
  }

  Future<PermissionStatus> checkPermissionStatus() async {
    var status = await ref
        .read(locationManagerUseCaseProvider)
        .requestLocationPermission();
    return status;
  }
}
