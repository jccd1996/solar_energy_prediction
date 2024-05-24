import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;
import 'package:solar_energy_prediction/core/extensions/app_context_extension.dart';
import 'package:solar_energy_prediction/core/location_manager/presentation/view_model/location_permission_view_model.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/home_screen.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/widgets/error_template.dart';
import 'package:solar_energy_prediction/ui/buttons/primary_button.dart';
import 'package:solar_energy_prediction/ui/buttons/primary_text_button.dart';

class RequestPermissionScreen extends ConsumerWidget {
  const RequestPermissionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationPermissionsViewModel =
        ref.watch(locationPermissionViewModelProvider);
    return Scaffold(
      key: const Key('request_permission_screen'),
      body: Center(
        child: locationPermissionsViewModel.when(
          data: (permission) {
            if (permission == PermissionStatus.denied ||
                permission == PermissionStatus.deniedForever) {
              final l10n = context.l10n;
              return Padding(
                key: const Key('denied_info'),
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      l10n.toOfferABetterExperienceInfo,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12.0),
                    PrimaryElevatedButton(
                      child: Text(l10n.requestLocation),
                      onPressed: () {
                        permission_handler.openAppSettings();
                      },
                    ),
                    const SizedBox(height: 12.0),
                    PrimaryTextButton(
                      child: Text(l10n.continueApp),
                      onPressed: () {
                        navigateToHomeScreen(context);
                      },
                    ),
                  ],
                ),
              );
            }
            navigateToHomeScreen(context);
            return const SizedBox.shrink();
          },
          error: (e, _) {
            return ErrorTemplate(
              key: const Key('request_permission_error'),
              message: context.l10n.unknownError,
            );
          },
          loading: () {
            return const CircularProgressIndicator(
              key: Key('request_permission_loader'),
            );
          },
        ),
      ),
    );
  }

  void navigateToHomeScreen(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback(
      (_) async {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const HomeScreen(),
          ),
        );
      },
    );
  }
}
