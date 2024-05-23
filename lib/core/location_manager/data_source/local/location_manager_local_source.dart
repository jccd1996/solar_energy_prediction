import 'package:location/location.dart';

abstract interface class LocationManagerLocalSource {
  Future<PermissionStatus> requestLocationPermission();
}

class LocationManagerLocalSourceImpl implements LocationManagerLocalSource {
  LocationManagerLocalSourceImpl();

  @override
  Future<PermissionStatus> requestLocationPermission() async {
    Location location = Location();
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
}
