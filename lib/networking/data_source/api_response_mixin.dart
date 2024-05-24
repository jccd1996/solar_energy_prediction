import 'package:dio/dio.dart';
import 'package:solar_energy_prediction/networking/data_source/api_exception.dart';
import 'package:solar_energy_prediction/networking/data_source/api_response.dart';

mixin ApiResponseHandler {
  Future<ApiResponse<T>> executeCall<T>(
    Future<T> apiRequest,
  ) async {
    try {
      final result = await apiRequest;
      return SuccessApiResponse(result);
    } on DioException catch (dioException) {
      switch (dioException.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          throw ErrorApiResponse(
            httpErrorMessage: dioException.message ?? 'timeOut',
            httpStatusCode: dioException.response?.statusCode ?? 408,
            apiResponseException: ApiResponseException.timeOut,
          );
        case DioExceptionType.badResponse:
          throw ErrorApiResponse(
            httpErrorMessage: dioException.message ?? 'badResponse',
            httpStatusCode: dioException.response?.statusCode ?? 400,
            apiResponseException: ApiResponseException.badResponse,
          );
        case DioExceptionType.connectionError:
          throw ErrorApiResponse(
            httpErrorMessage: dioException.message ?? 'connectionError',
            httpStatusCode: dioException.response?.statusCode ?? 502,
            apiResponseException: ApiResponseException.connectionError,
          );
        case DioExceptionType.unknown:
          throw ErrorApiResponse(
            httpErrorMessage: 'Unknown dio exception',
            httpStatusCode: 601,
          );
        default:
          throw ErrorApiResponse(
            httpErrorMessage: 'Unknown dio',
            httpStatusCode: 602,
          );
      }
    } catch (e) {
      throw ErrorApiResponse(
        httpErrorMessage: 'Unknown',
        httpStatusCode: 603,
      );
    }
  }
}
