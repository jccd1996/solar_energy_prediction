// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coord_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoordResponse _$CoordResponseFromJson(Map<String, dynamic> json) {
  return _CoordResponse.fromJson(json);
}

/// @nodoc
mixin _$CoordResponse {
  double get lon => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordResponseCopyWith<CoordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordResponseCopyWith<$Res> {
  factory $CoordResponseCopyWith(
          CoordResponse value, $Res Function(CoordResponse) then) =
      _$CoordResponseCopyWithImpl<$Res, CoordResponse>;
  @useResult
  $Res call({double lon, double lat});
}

/// @nodoc
class _$CoordResponseCopyWithImpl<$Res, $Val extends CoordResponse>
    implements $CoordResponseCopyWith<$Res> {
  _$CoordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lon = null,
    Object? lat = null,
  }) {
    return _then(_value.copyWith(
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoordResponseImplCopyWith<$Res>
    implements $CoordResponseCopyWith<$Res> {
  factory _$$CoordResponseImplCopyWith(
          _$CoordResponseImpl value, $Res Function(_$CoordResponseImpl) then) =
      __$$CoordResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lon, double lat});
}

/// @nodoc
class __$$CoordResponseImplCopyWithImpl<$Res>
    extends _$CoordResponseCopyWithImpl<$Res, _$CoordResponseImpl>
    implements _$$CoordResponseImplCopyWith<$Res> {
  __$$CoordResponseImplCopyWithImpl(
      _$CoordResponseImpl _value, $Res Function(_$CoordResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lon = null,
    Object? lat = null,
  }) {
    return _then(_$CoordResponseImpl(
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordResponseImpl implements _CoordResponse {
  const _$CoordResponseImpl({required this.lon, required this.lat});

  factory _$CoordResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordResponseImplFromJson(json);

  @override
  final double lon;
  @override
  final double lat;

  @override
  String toString() {
    return 'CoordResponse(lon: $lon, lat: $lat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordResponseImpl &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.lat, lat) || other.lat == lat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lon, lat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordResponseImplCopyWith<_$CoordResponseImpl> get copyWith =>
      __$$CoordResponseImplCopyWithImpl<_$CoordResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordResponseImplToJson(
      this,
    );
  }
}

abstract class _CoordResponse implements CoordResponse {
  const factory _CoordResponse(
      {required final double lon,
      required final double lat}) = _$CoordResponseImpl;

  factory _CoordResponse.fromJson(Map<String, dynamic> json) =
      _$CoordResponseImpl.fromJson;

  @override
  double get lon;
  @override
  double get lat;
  @override
  @JsonKey(ignore: true)
  _$$CoordResponseImplCopyWith<_$CoordResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
