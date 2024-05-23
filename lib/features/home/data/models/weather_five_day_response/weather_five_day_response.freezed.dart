// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_five_day_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherFiveDayResponse _$WeatherFiveDayResponseFromJson(
    Map<String, dynamic> json) {
  return _WeatherFiveDayResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherFiveDayResponse {
  String get cod => throw _privateConstructorUsedError;
  int get message => throw _privateConstructorUsedError;
  int get cnt => throw _privateConstructorUsedError;
  List<WeatherListResponse> get list => throw _privateConstructorUsedError;
  CityResponse get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherFiveDayResponseCopyWith<WeatherFiveDayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherFiveDayResponseCopyWith<$Res> {
  factory $WeatherFiveDayResponseCopyWith(WeatherFiveDayResponse value,
          $Res Function(WeatherFiveDayResponse) then) =
      _$WeatherFiveDayResponseCopyWithImpl<$Res, WeatherFiveDayResponse>;
  @useResult
  $Res call(
      {String cod,
      int message,
      int cnt,
      List<WeatherListResponse> list,
      CityResponse city});

  $CityResponseCopyWith<$Res> get city;
}

/// @nodoc
class _$WeatherFiveDayResponseCopyWithImpl<$Res,
        $Val extends WeatherFiveDayResponse>
    implements $WeatherFiveDayResponseCopyWith<$Res> {
  _$WeatherFiveDayResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = null,
    Object? message = null,
    Object? cnt = null,
    Object? list = null,
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int,
      cnt: null == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<WeatherListResponse>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityResponseCopyWith<$Res> get city {
    return $CityResponseCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherFiveDayResponseImplCopyWith<$Res>
    implements $WeatherFiveDayResponseCopyWith<$Res> {
  factory _$$WeatherFiveDayResponseImplCopyWith(
          _$WeatherFiveDayResponseImpl value,
          $Res Function(_$WeatherFiveDayResponseImpl) then) =
      __$$WeatherFiveDayResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cod,
      int message,
      int cnt,
      List<WeatherListResponse> list,
      CityResponse city});

  @override
  $CityResponseCopyWith<$Res> get city;
}

/// @nodoc
class __$$WeatherFiveDayResponseImplCopyWithImpl<$Res>
    extends _$WeatherFiveDayResponseCopyWithImpl<$Res,
        _$WeatherFiveDayResponseImpl>
    implements _$$WeatherFiveDayResponseImplCopyWith<$Res> {
  __$$WeatherFiveDayResponseImplCopyWithImpl(
      _$WeatherFiveDayResponseImpl _value,
      $Res Function(_$WeatherFiveDayResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = null,
    Object? message = null,
    Object? cnt = null,
    Object? list = null,
    Object? city = null,
  }) {
    return _then(_$WeatherFiveDayResponseImpl(
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int,
      cnt: null == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<WeatherListResponse>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherFiveDayResponseImpl implements _WeatherFiveDayResponse {
  const _$WeatherFiveDayResponseImpl(
      {required this.cod,
      required this.message,
      required this.cnt,
      required final List<WeatherListResponse> list,
      required this.city})
      : _list = list;

  factory _$WeatherFiveDayResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherFiveDayResponseImplFromJson(json);

  @override
  final String cod;
  @override
  final int message;
  @override
  final int cnt;
  final List<WeatherListResponse> _list;
  @override
  List<WeatherListResponse> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final CityResponse city;

  @override
  String toString() {
    return 'WeatherFiveDayResponse(cod: $cod, message: $message, cnt: $cnt, list: $list, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherFiveDayResponseImpl &&
            (identical(other.cod, cod) || other.cod == cod) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cnt, cnt) || other.cnt == cnt) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cod, message, cnt,
      const DeepCollectionEquality().hash(_list), city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherFiveDayResponseImplCopyWith<_$WeatherFiveDayResponseImpl>
      get copyWith => __$$WeatherFiveDayResponseImplCopyWithImpl<
          _$WeatherFiveDayResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherFiveDayResponseImplToJson(
      this,
    );
  }
}

abstract class _WeatherFiveDayResponse implements WeatherFiveDayResponse {
  const factory _WeatherFiveDayResponse(
      {required final String cod,
      required final int message,
      required final int cnt,
      required final List<WeatherListResponse> list,
      required final CityResponse city}) = _$WeatherFiveDayResponseImpl;

  factory _WeatherFiveDayResponse.fromJson(Map<String, dynamic> json) =
      _$WeatherFiveDayResponseImpl.fromJson;

  @override
  String get cod;
  @override
  int get message;
  @override
  int get cnt;
  @override
  List<WeatherListResponse> get list;
  @override
  CityResponse get city;
  @override
  @JsonKey(ignore: true)
  _$$WeatherFiveDayResponseImplCopyWith<_$WeatherFiveDayResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
