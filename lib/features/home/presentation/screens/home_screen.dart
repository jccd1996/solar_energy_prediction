import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:solar_energy_prediction/core/location_manager/presentation/view_model/current_location_view_model.dart';
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

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42, -122.08),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    final selectedMarker = ref.watch(markerProvider);
    final isLight = ref.watch(themeModeProvider) == ThemeMode.light;
    final currentLocation = ref.watch(currentLocationViewModelProvider);
    return Scaffold(
      key: const Key('home_screen'),
      body: Stack(
        children: [
          GoogleMap(
            key: const Key('google_map_section'),
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            style:
                isLight ? GoogleMapTheme.lightStyle : GoogleMapTheme.darkStyle,
            initialCameraPosition: handleCurrentLocation(currentLocation),
            onTap: (LatLng location) => _handleOnTap(selectedMarker, location),
            markers: selectedMarker != null ? {selectedMarker} : {},
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).viewPadding.top + 12,
            ),
          ),
          const Align(
            alignment: Alignment.topRight,
            child: ThemeButton(
              key: Key('home_theme_button'),
            ),
          ),
          DraggableWeatherSheet(
            key: const Key('draggable_weather'),
            draggableScrollableController: draggableScrollableController,
          ),
        ],
      ),
    );
  }

  CameraPosition handleCurrentLocation(AsyncValue<LocationData?> locationData) {
    return locationData.when(
        data: (location) {
          return CameraPosition(
            target: LatLng(location!.latitude!, location.longitude!),
            zoom: 15.0,
          );
        },
        error: (_, __) => _kGooglePlex,
        loading: () => _kGooglePlex);
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
