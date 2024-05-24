import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solar_energy_prediction/core/location_manager/data/repository/location_manager_repository_impl.dart';
import 'package:solar_energy_prediction/core/location_manager/data_source/local/location_manager_local_source.dart';
import 'package:solar_energy_prediction/core/location_manager/domain/repository/location_manager_repostiory.dart';
import 'package:solar_energy_prediction/core/location_manager/domain/use_case/location_manager_use_case.dart';

final locationManagerUseCaseProvider = Provider((ref) {
  final LocationManagerLocalSource localSource =
      LocationManagerLocalSourceImpl();
  final LocationManagerRepository repository =
      LocationManagerRepositoryImpl(localSource);

  final LocationManagerUseCase permissionManagerUseCase =
      LocationManagerUseCaseImpl(repository);
  return permissionManagerUseCase;
});
