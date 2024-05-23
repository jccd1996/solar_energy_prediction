abstract interface class HttpClientConfigurer {
  void configureHttpClient({
    required String baseUrl,
    required String apiKey,
  });
}
