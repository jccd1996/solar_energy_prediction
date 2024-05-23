import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solar_energy_prediction/networking/dio_client.dart';

final clientProvider = Provider(
  (ref) => DioClient(),
);
