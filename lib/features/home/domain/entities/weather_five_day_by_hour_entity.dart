class WeatherFiveDayByHourEntity {
  final String time;
  final String iconUrl;
  final String temp;
  final double tempDouble;
  final String dtTxt;

  WeatherFiveDayByHourEntity({
    required this.time,
    required this.iconUrl,
    required this.temp,
    required this.dtTxt,
    required this.tempDouble,
  });
}