import 'package:location/location.dart';
import 'package:solar_energy_prediction/core/location_manager/domain/repository/location_manager_repostiory.dart';

abstract interface class LocationManagerUseCase {
  Future<PermissionStatus> requestLocationPermission();
  Future<LocationData> getCurrentLocation();
}

class LocationManagerUseCaseImpl implements LocationManagerUseCase {
  final LocationManagerRepository repository;

  LocationManagerUseCaseImpl(this.repository);

  @override
  Future<PermissionStatus> requestLocationPermission() async {
    return repository.requestLocationPermission();
  }

  @override
  Future<LocationData> getCurrentLocation() {
    return repository.getCurrentLocation();
  }
}
