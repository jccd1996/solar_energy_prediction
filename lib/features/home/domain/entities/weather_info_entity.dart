class WeatherInfoEntity {
  final double lon;
  final double lat;
  final String main;
  final String description;
  final String iconUrl;
  final String temp;
  final String tempMin;
  final String tempMax;
  final String name;

  WeatherInfoEntity({
    required this.lon,
    required this.lat,
    required this.main,
    required this.description,
    required this.iconUrl,
    required this.temp,
    required this.tempMin,
    required this.tempMax,
    required this.name,
  });
}
