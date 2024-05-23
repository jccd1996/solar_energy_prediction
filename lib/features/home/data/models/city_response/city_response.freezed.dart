// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CityResponse _$CityResponseFromJson(Map<String, dynamic> json) {
  return _CityResponse.fromJson(json);
}

/// @nodoc
mixin _$CityResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  CoordResponse get coord => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  int get population => throw _privateConstructorUsedError;
  int get timezone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityResponseCopyWith<CityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityResponseCopyWith<$Res> {
  factory $CityResponseCopyWith(
          CityResponse value, $Res Function(CityResponse) then) =
      _$CityResponseCopyWithImpl<$Res, CityResponse>;
  @useResult
  $Res call(
      {int id,
      String name,
      CoordResponse coord,
      String country,
      int population,
      int timezone});

  $CoordResponseCopyWith<$Res> get coord;
}

/// @nodoc
class _$CityResponseCopyWithImpl<$Res, $Val extends CityResponse>
    implements $CityResponseCopyWith<$Res> {
  _$CityResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? coord = null,
    Object? country = null,
    Object? population = null,
    Object? timezone = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CoordResponse,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordResponseCopyWith<$Res> get coord {
    return $CoordResponseCopyWith<$Res>(_value.coord, (value) {
      return _then(_value.copyWith(coord: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CityResponseImplCopyWith<$Res>
    implements $CityResponseCopyWith<$Res> {
  factory _$$CityResponseImplCopyWith(
          _$CityResponseImpl value, $Res Function(_$CityResponseImpl) then) =
      __$$CityResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      CoordResponse coord,
      String country,
      int population,
      int timezone});

  @override
  $CoordResponseCopyWith<$Res> get coord;
}

/// @nodoc
class __$$CityResponseImplCopyWithImpl<$Res>
    extends _$CityResponseCopyWithImpl<$Res, _$CityResponseImpl>
    implements _$$CityResponseImplCopyWith<$Res> {
  __$$CityResponseImplCopyWithImpl(
      _$CityResponseImpl _value, $Res Function(_$CityResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? coord = null,
    Object? country = null,
    Object? population = null,
    Object? timezone = null,
  }) {
    return _then(_$CityResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CoordResponse,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityResponseImpl implements _CityResponse {
  const _$CityResponseImpl(
      {required this.id,
      required this.name,
      required this.coord,
      required this.country,
      required this.population,
      required this.timezone});

  factory _$CityResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final CoordResponse coord;
  @override
  final String country;
  @override
  final int population;
  @override
  final int timezone;

  @override
  String toString() {
    return 'CityResponse(id: $id, name: $name, coord: $coord, country: $country, population: $population, timezone: $timezone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coord, coord) || other.coord == coord) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.population, population) ||
                other.population == population) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, coord, country, population, timezone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityResponseImplCopyWith<_$CityResponseImpl> get copyWith =>
      __$$CityResponseImplCopyWithImpl<_$CityResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityResponseImplToJson(
      this,
    );
  }
}

abstract class _CityResponse implements CityResponse {
  const factory _CityResponse(
      {required final int id,
      required final String name,
      required final CoordResponse coord,
      required final String country,
      required final int population,
      required final int timezone}) = _$CityResponseImpl;

  factory _CityResponse.fromJson(Map<String, dynamic> json) =
      _$CityResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  CoordResponse get coord;
  @override
  String get country;
  @override
  int get population;
  @override
  int get timezone;
  @override
  @JsonKey(ignore: true)
  _$$CityResponseImplCopyWith<_$CityResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
