// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherInfoResponse _$WeatherInfoResponseFromJson(Map<String, dynamic> json) {
  return _WeatherInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherInfoResponse {
  CoordResponse get coord => throw _privateConstructorUsedError;
  List<WeatherResponse> get weather => throw _privateConstructorUsedError;
  WeatherMainResponse get main => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherInfoResponseCopyWith<WeatherInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherInfoResponseCopyWith<$Res> {
  factory $WeatherInfoResponseCopyWith(
          WeatherInfoResponse value, $Res Function(WeatherInfoResponse) then) =
      _$WeatherInfoResponseCopyWithImpl<$Res, WeatherInfoResponse>;
  @useResult
  $Res call(
      {CoordResponse coord,
      List<WeatherResponse> weather,
      WeatherMainResponse main,
      int id,
      String name});

  $CoordResponseCopyWith<$Res> get coord;
  $WeatherMainResponseCopyWith<$Res> get main;
}

/// @nodoc
class _$WeatherInfoResponseCopyWithImpl<$Res, $Val extends WeatherInfoResponse>
    implements $WeatherInfoResponseCopyWith<$Res> {
  _$WeatherInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = null,
    Object? weather = null,
    Object? main = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CoordResponse,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherResponse>,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherMainResponse,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordResponseCopyWith<$Res> get coord {
    return $CoordResponseCopyWith<$Res>(_value.coord, (value) {
      return _then(_value.copyWith(coord: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherMainResponseCopyWith<$Res> get main {
    return $WeatherMainResponseCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherInfoResponseImplCopyWith<$Res>
    implements $WeatherInfoResponseCopyWith<$Res> {
  factory _$$WeatherInfoResponseImplCopyWith(_$WeatherInfoResponseImpl value,
          $Res Function(_$WeatherInfoResponseImpl) then) =
      __$$WeatherInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CoordResponse coord,
      List<WeatherResponse> weather,
      WeatherMainResponse main,
      int id,
      String name});

  @override
  $CoordResponseCopyWith<$Res> get coord;
  @override
  $WeatherMainResponseCopyWith<$Res> get main;
}

/// @nodoc
class __$$WeatherInfoResponseImplCopyWithImpl<$Res>
    extends _$WeatherInfoResponseCopyWithImpl<$Res, _$WeatherInfoResponseImpl>
    implements _$$WeatherInfoResponseImplCopyWith<$Res> {
  __$$WeatherInfoResponseImplCopyWithImpl(_$WeatherInfoResponseImpl _value,
      $Res Function(_$WeatherInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = null,
    Object? weather = null,
    Object? main = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$WeatherInfoResponseImpl(
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CoordResponse,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherResponse>,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherMainResponse,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherInfoResponseImpl implements _WeatherInfoResponse {
  const _$WeatherInfoResponseImpl(
      {required this.coord,
      required final List<WeatherResponse> weather,
      required this.main,
      required this.id,
      required this.name})
      : _weather = weather;

  factory _$WeatherInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherInfoResponseImplFromJson(json);

  @override
  final CoordResponse coord;
  final List<WeatherResponse> _weather;
  @override
  List<WeatherResponse> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final WeatherMainResponse main;
  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'WeatherInfoResponse(coord: $coord, weather: $weather, main: $main, id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherInfoResponseImpl &&
            (identical(other.coord, coord) || other.coord == coord) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, coord,
      const DeepCollectionEquality().hash(_weather), main, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherInfoResponseImplCopyWith<_$WeatherInfoResponseImpl> get copyWith =>
      __$$WeatherInfoResponseImplCopyWithImpl<_$WeatherInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _WeatherInfoResponse implements WeatherInfoResponse {
  const factory _WeatherInfoResponse(
      {required final CoordResponse coord,
      required final List<WeatherResponse> weather,
      required final WeatherMainResponse main,
      required final int id,
      required final String name}) = _$WeatherInfoResponseImpl;

  factory _WeatherInfoResponse.fromJson(Map<String, dynamic> json) =
      _$WeatherInfoResponseImpl.fromJson;

  @override
  CoordResponse get coord;
  @override
  List<WeatherResponse> get weather;
  @override
  WeatherMainResponse get main;
  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$WeatherInfoResponseImplCopyWith<_$WeatherInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
