import 'package:location/location.dart';

abstract interface class LocationManagerLocalSource {
  Future<PermissionStatus> requestLocationPermission();

  Future<LocationData> getCurrentLocation();
}

class LocationManagerLocalSourceImpl implements LocationManagerLocalSource {
  Location location = Location();

  LocationManagerLocalSourceImpl();

  @override
  Future<PermissionStatus> requestLocationPermission() async {
    bool serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
    }

    PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
    }

    return permissionGranted;
  }

  @override
  Future<LocationData> getCurrentLocation() {
    return location.getLocation();
  }
}
