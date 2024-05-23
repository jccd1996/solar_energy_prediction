import 'package:location/location.dart';
import 'package:solar_energy_prediction/core/location_manager/data_source/local/location_manager_local_source.dart';

import '../../domain/repository/location_manager_repostiory.dart';

class LocationManagerRepositoryImpl implements LocationManagerRepository {
  final LocationManagerLocalSource localSource;

  LocationManagerRepositoryImpl(this.localSource);

  @override
  Future<PermissionStatus> requestLocationPermission() async {
    return await localSource.requestLocationPermission();
  }
}
