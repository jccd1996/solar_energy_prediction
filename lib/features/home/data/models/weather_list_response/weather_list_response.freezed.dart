// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherListResponse _$WeatherListResponseFromJson(Map<String, dynamic> json) {
  return _WeatherListResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherListResponse {
  int get dt => throw _privateConstructorUsedError;
  WeatherMainResponse get main => throw _privateConstructorUsedError;
  List<WeatherResponse> get weather => throw _privateConstructorUsedError;
  @JsonKey(name: 'dt_txt')
  String get dtTxt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherListResponseCopyWith<WeatherListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherListResponseCopyWith<$Res> {
  factory $WeatherListResponseCopyWith(
          WeatherListResponse value, $Res Function(WeatherListResponse) then) =
      _$WeatherListResponseCopyWithImpl<$Res, WeatherListResponse>;
  @useResult
  $Res call(
      {int dt,
      WeatherMainResponse main,
      List<WeatherResponse> weather,
      @JsonKey(name: 'dt_txt') String dtTxt});

  $WeatherMainResponseCopyWith<$Res> get main;
}

/// @nodoc
class _$WeatherListResponseCopyWithImpl<$Res, $Val extends WeatherListResponse>
    implements $WeatherListResponseCopyWith<$Res> {
  _$WeatherListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
    Object? dtTxt = null,
  }) {
    return _then(_value.copyWith(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherMainResponse,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherResponse>,
      dtTxt: null == dtTxt
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
abstract class _$$WeatherListResponseImplCopyWith<$Res>
    implements $WeatherListResponseCopyWith<$Res> {
  factory _$$WeatherListResponseImplCopyWith(_$WeatherListResponseImpl value,
          $Res Function(_$WeatherListResponseImpl) then) =
      __$$WeatherListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int dt,
      WeatherMainResponse main,
      List<WeatherResponse> weather,
      @JsonKey(name: 'dt_txt') String dtTxt});

  @override
  $WeatherMainResponseCopyWith<$Res> get main;
}

/// @nodoc
class __$$WeatherListResponseImplCopyWithImpl<$Res>
    extends _$WeatherListResponseCopyWithImpl<$Res, _$WeatherListResponseImpl>
    implements _$$WeatherListResponseImplCopyWith<$Res> {
  __$$WeatherListResponseImplCopyWithImpl(_$WeatherListResponseImpl _value,
      $Res Function(_$WeatherListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
    Object? dtTxt = null,
  }) {
    return _then(_$WeatherListResponseImpl(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherMainResponse,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherResponse>,
      dtTxt: null == dtTxt
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherListResponseImpl implements _WeatherListResponse {
  const _$WeatherListResponseImpl(
      {required this.dt,
      required this.main,
      required final List<WeatherResponse> weather,
      @JsonKey(name: 'dt_txt') required this.dtTxt})
      : _weather = weather;

  factory _$WeatherListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherListResponseImplFromJson(json);

  @override
  final int dt;
  @override
  final WeatherMainResponse main;
  final List<WeatherResponse> _weather;
  @override
  List<WeatherResponse> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  @JsonKey(name: 'dt_txt')
  final String dtTxt;

  @override
  String toString() {
    return 'WeatherListResponse(dt: $dt, main: $main, weather: $weather, dtTxt: $dtTxt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherListResponseImpl &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.dtTxt, dtTxt) || other.dtTxt == dtTxt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dt, main,
      const DeepCollectionEquality().hash(_weather), dtTxt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherListResponseImplCopyWith<_$WeatherListResponseImpl> get copyWith =>
      __$$WeatherListResponseImplCopyWithImpl<_$WeatherListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherListResponseImplToJson(
      this,
    );
  }
}

abstract class _WeatherListResponse implements WeatherListResponse {
  const factory _WeatherListResponse(
          {required final int dt,
          required final WeatherMainResponse main,
          required final List<WeatherResponse> weather,
          @JsonKey(name: 'dt_txt') required final String dtTxt}) =
      _$WeatherListResponseImpl;

  factory _WeatherListResponse.fromJson(Map<String, dynamic> json) =
      _$WeatherListResponseImpl.fromJson;

  @override
  int get dt;
  @override
  WeatherMainResponse get main;
  @override
  List<WeatherResponse> get weather;
  @override
  @JsonKey(name: 'dt_txt')
  String get dtTxt;
  @override
  @JsonKey(ignore: true)
  _$$WeatherListResponseImplCopyWith<_$WeatherListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
