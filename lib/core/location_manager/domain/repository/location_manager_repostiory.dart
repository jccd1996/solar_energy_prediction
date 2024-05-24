import 'package:location/location.dart';

abstract interface class LocationManagerRepository {
  Future<PermissionStatus> requestLocationPermission();

  Future<LocationData> getCurrentLocation();
}
