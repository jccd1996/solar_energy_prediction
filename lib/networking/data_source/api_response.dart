sealed class ApiResponse<T> {
  R when<R>({
    R Function(SuccessApiResponse<T> success)? onSuccess,
    R Function(ErrorApiResponse<T> error)? onError,
  });
}

class SuccessApiResponse<T> extends ApiResponse<T> {
  final T body;

  SuccessApiResponse(this.body);

  @override
  R when<R>(
      {R Function(SuccessApiResponse<T> success)? onSuccess,
      R Function(ErrorApiResponse<T> error)? onError}) {
    return onSuccess != null
        ? onSuccess(this)
        : throw UnimplementedError('onSuccess is not implemented');
  }
}

class ErrorApiResponse<T> extends ApiResponse<T> {
  final String httpErrorMessage;
  final int httpStatusCode;

  ErrorApiResponse({
    required this.httpErrorMessage,
    required this.httpStatusCode,
  });

  @override
  R when<R>({
    R Function(SuccessApiResponse<T> success)? onSuccess,
    R Function(ErrorApiResponse<T> error)? onError,
  }) {
    return onError != null
        ? onError(this)
        : throw UnimplementedError('onError is not implemented');
  }
}
