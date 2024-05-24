import 'package:mockito/annotations.dart';
import 'package:solar_energy_prediction/core/location_manager/domain/repository/location_manager_repostiory.dart';
import 'package:solar_energy_prediction/core/location_manager/domain/use_case/location_manager_use_case.dart';
import 'package:solar_energy_prediction/features/home/data/data_source/remote/weather_api_source.dart';
import 'package:solar_energy_prediction/features/home/domain/repository/weather_repository.dart';
import 'package:solar_energy_prediction/features/home/domain/use_case/weather_use_case.dart';

@GenerateMocks([
  LocationManagerUseCase,
  LocationManagerRepository,
  WeatherUseCase,
  WeatherRepository,
  WeatherApiSource
])
class MocksGenerator {
  MocksGenerator._();
}
