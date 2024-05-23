import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  Environment._();

  static String baseUrl = dotenv.env['BASE_URL'] ?? '';
  static String baseIconUrl = dotenv.env['BASE_ICON_URL'] ?? '';
  static String weatherApiKey = dotenv.env['WEATHER_API_KEY'] ?? '';
}
