import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solar_energy_prediction/features/home/data/data_source/remote/weather_api_source.dart';
import 'package:solar_energy_prediction/features/home/data/repository/weather_repository_impl.dart';
import 'package:solar_energy_prediction/features/home/domain/repository/weather_repository.dart';
import 'package:solar_energy_prediction/features/home/domain/use_case/weather_use_case.dart';
import 'package:solar_energy_prediction/networking/providers/client_provider.dart';

final weatherUseCaseProvider = Provider(
  (ref) {
    final WeatherApiSource localSource =
        WeatherApiSourceImpl(ref.read(clientProvider));
    final WeatherRepository repository = WeatherRepositoryImpl(localSource);
    final WeatherUseCase weatherUseCase = WeatherUseCaseImpl(repository);
    return weatherUseCase;
  },
);
