import 'package:flutter/material.dart';
import 'package:solar_energy_prediction/core/extensions/app_context_extension.dart';

enum ApiResponseException {
  timeOut(),
  badResponse(),
  connectionError(),
  unknown(),
}

extension ApiResponseExceptionExtension on ApiResponseException {
  String getMessage(BuildContext context) {
    switch (this) {
      case ApiResponseException.timeOut:
        return context.l10n.timeoutError;
      case ApiResponseException.badResponse:
        return context.l10n.badResponseError;
      case ApiResponseException.connectionError:
        return context.l10n.connectionError;
      case ApiResponseException.unknown:
        return context.l10n.unknownError;
    }
  }
}
