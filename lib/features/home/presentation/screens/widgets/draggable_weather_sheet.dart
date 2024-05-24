import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solar_energy_prediction/core/extensions/app_context_extension.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/widgets/current_weather/current_weather_info.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/widgets/error_template.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/widgets/five_day_forecast/five_day_weather_info.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/widgets/sliver_loader.dart';
import 'package:solar_energy_prediction/features/home/presentation/view_models/selected_location_current_weather_view_model.dart';
import 'package:solar_energy_prediction/features/home/presentation/view_models/selected_location_five_day_weather_view_model.dart';
import 'package:solar_energy_prediction/networking/data_source/api_exception.dart';
import 'package:solar_energy_prediction/networking/data_source/api_response.dart';

class DraggableWeatherSheet extends ConsumerWidget {
  final DraggableScrollableController draggableScrollableController;

  const DraggableWeatherSheet({
    super.key,
    required this.draggableScrollableController,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLocationViewModel =
        ref.watch(selectedLocationCurrentWeatherViewModelProvider);
    final selectedLocationFiveDayViewModel =
        ref.watch(selectedLocationFiveDayWeatherViewModelProvider);
    return DraggableScrollableSheet(
      controller: draggableScrollableController,
      initialChildSize: 0,
      minChildSize: 0,
      maxChildSize: 0.7,
      shouldCloseOnMinExtent: false,
      snapSizes: const [0.1],
      snap: true,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: context.colorsScheme.onPrimary,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              ...[
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 5,
                        width: 30,
                        decoration: const BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                selectedLocationViewModel.when(
                  data: (weatherInfo) {
                    if (weatherInfo == null) return const SliverToBoxAdapter();
                    return SliverToBoxAdapter(
                      child: CurrentWeatherInfo(weatherInfo: weatherInfo),
                    );
                  },
                  error: (e, _) {
                    return SliverToBoxAdapter(
                      child: ErrorTemplate(
                        message: e is ErrorApiResponse
                            ? e.apiResponseException.getMessage(context)
                            : context.l10n.unknownError,
                      ),
                    );
                  },
                  loading: () => const SliverLoader(),
                ),
                const SliverToBoxAdapter(child: Divider(height: 32.0)),
                selectedLocationFiveDayViewModel.when(
                  data: (data) {
                    if (data == null) return const SliverToBoxAdapter();
                    return SliverToBoxAdapter(
                      child: FiveDayWeatherInfo(fiveDayInfo: data),
                    );
                  },
                  error: (e, _) {
                    return SliverToBoxAdapter(
                      child: ErrorTemplate(
                        message: e is ErrorApiResponse
                            ? e.apiResponseException.getMessage(context)
                            : context.l10n.unknownError,
                      ),
                    );
                  },
                  loading: () => const SliverLoader(),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
