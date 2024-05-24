import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';

class JsonUtils {
  static Future<R> convertJsonToResponse<R>({
    required String path,
    required R Function(Map<String, dynamic>) fromJson,
  }) async {
    String data = await rootBundle.loadString(
      '${Directory.current.path}/test/$path',
      cache: false,
    );

    final dataJson = json.decode(data);
    final R response = fromJson(dataJson);
    return response;
  }
}
