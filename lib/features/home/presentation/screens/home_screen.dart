import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:solar_energy_prediction/core/theme/google_map_theme.dart';
import 'package:solar_energy_prediction/core/theme/theme_provider.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/widgets/draggable_weather_sheet.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/widgets/theme_button.dart';
import 'package:solar_energy_prediction/features/home/presentation/view_models/marker_provider.dart';
import 'package:solar_energy_prediction/features/home/presentation/view_models/selected_location_current_weather_view_model.dart';
import 'package:solar_energy_prediction/features/home/presentation/view_models/selected_location_five_day_weather_view_model.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => HomeMapScreenState();
}

class HomeMapScreenState extends ConsumerState<HomeScreen> {
  final DraggableScrollableController draggableScrollableController =
      DraggableScrollableController();

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    final selectedMarker = ref.watch(markerProvider);
    final isLight = ref.watch(themeModeProvider) == ThemeMode.light;
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            style:
                isLight ? GoogleMapTheme.lightStyle : GoogleMapTheme.darkStyle,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) =>
                _controller.complete(controller),
            onTap: (LatLng location) => _handleOnTap(selectedMarker, location),
            markers: selectedMarker != null ? {selectedMarker} : {},
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).viewPadding.top + 12,
            ),
          ),
          const Align(
            alignment: Alignment.topRight,
            child: ThemeButton(),
          ),
          DraggableWeatherSheet(
            draggableScrollableController: draggableScrollableController,
          ),
        ],
      ),
    );
  }

  void _handleOnTap(Marker? selectedMarker, LatLng location) {
    var markerProviderState = ref.read(markerProvider.notifier);
    if (selectedMarker == null) {
      _updateCurrentWeather(location);
      _updateFiveDayWeather(location);
      final marker = Marker(
        markerId: const MarkerId('weather_marker'),
        position: LatLng(location.latitude, location.longitude),
        icon: BitmapDescriptor.defaultMarker,
      );
      markerProviderState.state = marker;
      _handleAnimation(0.5);
      return;
    }
    _handleAnimation(0.0);
    return markerProviderState.state = null;
  }

  void _updateFiveDayWeather(LatLng location) {
    ref
        .read(selectedLocationFiveDayWeatherViewModelProvider.notifier)
        .updateFiveDayWeather(location.latitude, location.longitude);
  }

  void _updateCurrentWeather(LatLng location) {
    ref
        .read(selectedLocationCurrentWeatherViewModelProvider.notifier)
        .updateWeather(location.latitude, location.longitude);
  }

  void _handleAnimation(double size) {
    draggableScrollableController.animateTo(
      size,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
