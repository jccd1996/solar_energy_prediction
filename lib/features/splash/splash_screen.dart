import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solar_energy_prediction/core/location_manager/presentation/view_model/location_permission_view_model.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/home_screen.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(locationPermissionViewModelProvider);
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => HomeScreen(),
              ),
            );
          },
          child: Text('Cargando'),
        ),
      ),
    );
  }
}
