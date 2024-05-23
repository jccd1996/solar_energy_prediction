import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:location/location.dart';
import 'package:solar_energy_prediction/core/location_manager/domain/use_case/location_manager_use_case_provider.dart';

final locationPermissionViewModelProvider =
    AsyncNotifierProvider<LocationNotifier, PermissionStatus>(
  () => LocationNotifier(),
);

class LocationNotifier extends AsyncNotifier<PermissionStatus> {
  @override
  Future<PermissionStatus> build() async {
    return await _checkPermissionStatus();
  }

  Future<PermissionStatus> _checkPermissionStatus() async {
    var status = await ref
        .read(permissionManagerUseCaseProvider)
        .requestLocationPermission();
    return status;
  }
}
