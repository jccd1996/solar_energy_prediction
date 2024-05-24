// Mocks generated by Mockito 5.4.4 from annotations
// in solar_energy_prediction/test/utils/mock_generator/mocks_generator.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:location/location.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i13;
import 'package:solar_energy_prediction/core/location_manager/domain/repository/location_manager_repostiory.dart'
    as _i7;
import 'package:solar_energy_prediction/core/location_manager/domain/use_case/location_manager_use_case.dart'
    as _i5;
import 'package:solar_energy_prediction/features/home/data/data_source/remote/weather_api_source.dart'
    as _i10;
import 'package:solar_energy_prediction/features/home/data/models/weather_five_day_response/weather_five_day_response.dart'
    as _i14;
import 'package:solar_energy_prediction/features/home/data/models/weather_info_response/weather_info_response.dart'
    as _i12;
import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_info_entity.dart'
    as _i4;
import 'package:solar_energy_prediction/features/home/domain/entities/weather_info_entity.dart'
    as _i3;
import 'package:solar_energy_prediction/features/home/domain/repository/weather_repository.dart'
    as _i9;
import 'package:solar_energy_prediction/features/home/domain/use_case/weather_use_case.dart'
    as _i8;
import 'package:solar_energy_prediction/networking/data_source/api_response.dart'
    as _i11;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeLocationData_0 extends _i1.SmartFake implements _i2.LocationData {
  _FakeLocationData_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWeatherInfoEntity_1 extends _i1.SmartFake
    implements _i3.WeatherInfoEntity {
  _FakeWeatherInfoEntity_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWeatherFiveDayInfoEntity_2 extends _i1.SmartFake
    implements _i4.WeatherFiveDayInfoEntity {
  _FakeWeatherFiveDayInfoEntity_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [LocationManagerUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocationManagerUseCase extends _i1.Mock
    implements _i5.LocationManagerUseCase {
  MockLocationManagerUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i2.PermissionStatus> requestLocationPermission() =>
      (super.noSuchMethod(
        Invocation.method(
          #requestLocationPermission,
          [],
        ),
        returnValue: _i6.Future<_i2.PermissionStatus>.value(
            _i2.PermissionStatus.granted),
      ) as _i6.Future<_i2.PermissionStatus>);

  @override
  _i6.Future<_i2.LocationData> getCurrentLocation() => (super.noSuchMethod(
        Invocation.method(
          #getCurrentLocation,
          [],
        ),
        returnValue: _i6.Future<_i2.LocationData>.value(_FakeLocationData_0(
          this,
          Invocation.method(
            #getCurrentLocation,
            [],
          ),
        )),
      ) as _i6.Future<_i2.LocationData>);
}

/// A class which mocks [LocationManagerRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocationManagerRepository extends _i1.Mock
    implements _i7.LocationManagerRepository {
  MockLocationManagerRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i2.PermissionStatus> requestLocationPermission() =>
      (super.noSuchMethod(
        Invocation.method(
          #requestLocationPermission,
          [],
        ),
        returnValue: _i6.Future<_i2.PermissionStatus>.value(
            _i2.PermissionStatus.granted),
      ) as _i6.Future<_i2.PermissionStatus>);

  @override
  _i6.Future<_i2.LocationData> getCurrentLocation() => (super.noSuchMethod(
        Invocation.method(
          #getCurrentLocation,
          [],
        ),
        returnValue: _i6.Future<_i2.LocationData>.value(_FakeLocationData_0(
          this,
          Invocation.method(
            #getCurrentLocation,
            [],
          ),
        )),
      ) as _i6.Future<_i2.LocationData>);
}

/// A class which mocks [WeatherUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockWeatherUseCase extends _i1.Mock implements _i8.WeatherUseCase {
  MockWeatherUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i3.WeatherInfoEntity> getWeather({
    required double? lat,
    required double? lon,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getWeather,
          [],
          {
            #lat: lat,
            #lon: lon,
          },
        ),
        returnValue:
            _i6.Future<_i3.WeatherInfoEntity>.value(_FakeWeatherInfoEntity_1(
          this,
          Invocation.method(
            #getWeather,
            [],
            {
              #lat: lat,
              #lon: lon,
            },
          ),
        )),
      ) as _i6.Future<_i3.WeatherInfoEntity>);

  @override
  _i6.Future<_i4.WeatherFiveDayInfoEntity> getWeatherFiveForecast({
    required double? lat,
    required double? lon,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getWeatherFiveForecast,
          [],
          {
            #lat: lat,
            #lon: lon,
          },
        ),
        returnValue: _i6.Future<_i4.WeatherFiveDayInfoEntity>.value(
            _FakeWeatherFiveDayInfoEntity_2(
          this,
          Invocation.method(
            #getWeatherFiveForecast,
            [],
            {
              #lat: lat,
              #lon: lon,
            },
          ),
        )),
      ) as _i6.Future<_i4.WeatherFiveDayInfoEntity>);
}

/// A class which mocks [WeatherRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockWeatherRepository extends _i1.Mock implements _i9.WeatherRepository {
  MockWeatherRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i3.WeatherInfoEntity> getWeather({
    required double? lat,
    required double? lon,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getWeather,
          [],
          {
            #lat: lat,
            #lon: lon,
          },
        ),
        returnValue:
            _i6.Future<_i3.WeatherInfoEntity>.value(_FakeWeatherInfoEntity_1(
          this,
          Invocation.method(
            #getWeather,
            [],
            {
              #lat: lat,
              #lon: lon,
            },
          ),
        )),
      ) as _i6.Future<_i3.WeatherInfoEntity>);

  @override
  _i6.Future<_i4.WeatherFiveDayInfoEntity> getWeatherFiveDayForecast({
    required double? lat,
    required double? lon,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getWeatherFiveDayForecast,
          [],
          {
            #lat: lat,
            #lon: lon,
          },
        ),
        returnValue: _i6.Future<_i4.WeatherFiveDayInfoEntity>.value(
            _FakeWeatherFiveDayInfoEntity_2(
          this,
          Invocation.method(
            #getWeatherFiveDayForecast,
            [],
            {
              #lat: lat,
              #lon: lon,
            },
          ),
        )),
      ) as _i6.Future<_i4.WeatherFiveDayInfoEntity>);
}

/// A class which mocks [WeatherApiSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockWeatherApiSource extends _i1.Mock implements _i10.WeatherApiSource {
  MockWeatherApiSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i11.ApiResponse<_i12.WeatherInfoResponse>> getWeather({
    required double? lat,
    required double? lon,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getWeather,
          [],
          {
            #lat: lat,
            #lon: lon,
          },
        ),
        returnValue:
            _i6.Future<_i11.ApiResponse<_i12.WeatherInfoResponse>>.value(
                _i13.dummyValue<_i11.ApiResponse<_i12.WeatherInfoResponse>>(
          this,
          Invocation.method(
            #getWeather,
            [],
            {
              #lat: lat,
              #lon: lon,
            },
          ),
        )),
      ) as _i6.Future<_i11.ApiResponse<_i12.WeatherInfoResponse>>);

  @override
  _i6.Future<
      _i11.ApiResponse<_i14.WeatherFiveDayResponse>> getWeatherFiveDayByHour({
    required double? lat,
    required double? lon,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getWeatherFiveDayByHour,
          [],
          {
            #lat: lat,
            #lon: lon,
          },
        ),
        returnValue:
            _i6.Future<_i11.ApiResponse<_i14.WeatherFiveDayResponse>>.value(
                _i13.dummyValue<_i11.ApiResponse<_i14.WeatherFiveDayResponse>>(
          this,
          Invocation.method(
            #getWeatherFiveDayByHour,
            [],
            {
              #lat: lat,
              #lon: lon,
            },
          ),
        )),
      ) as _i6.Future<_i11.ApiResponse<_i14.WeatherFiveDayResponse>>);
}