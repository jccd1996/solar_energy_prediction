import 'package:freezed_annotation/freezed_annotation.dart';
part 'coord_response.freezed.dart';

part 'coord_response.g.dart';
@freezed
class CoordResponse with _$CoordResponse {
  const factory CoordResponse({
    required double lon,
    required double lat,
  }) = _CoordResponse;

  factory CoordResponse.fromJson(Map<String, dynamic> json) => _$CoordResponseFromJson(json);
}

