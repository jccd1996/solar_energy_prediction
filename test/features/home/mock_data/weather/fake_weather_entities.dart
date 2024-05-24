import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_average_by_day_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_by_hour_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_five_day_info_entity.dart';
import 'package:solar_energy_prediction/features/home/domain/entities/weather_info_entity.dart';

class FakeWeatherEntities {
  FakeWeatherEntities._();

  static final fakeCurrentWeather = WeatherInfoEntity(
    lat: 1.0,
    lon: 1.0,
    temp: '30',
    tempMin: '15',
    tempMax: '35',
    main: 'main',
    description: 'description',
    name: 'name',
    iconUrl: 'iconUrl',
  );

  static final fakeFiveDayInfoWeather = WeatherFiveDayInfoEntity(
    weatherFiveDayAverageByDay: [
      WeatherFiveDayByAverageDayEntity(
        averageTemp: '25°C',
        minTemp: '20°C',
        maxTemp: '30°C',
        date: 'Fri, 24',
      ),
      WeatherFiveDayByAverageDayEntity(
        averageTemp: '27°C',
        minTemp: '22°C',
        maxTemp: '32°C',
        date: 'Fri, 25',
      ),
      WeatherFiveDayByAverageDayEntity(
        averageTemp: '23°C',
        minTemp: '18°C',
        maxTemp: '28°C',
        date: 'Fri, 26',
      )
    ],
    weatherFiveDayByHour: [
      WeatherFiveDayByHourEntity(
        time: 'Fri, 3 PM',
        iconUrl: 'https://example.com/icon1.png',
        temp: '25°C',
        dtTxt: '2024-05-30 12:00:00',
        tempDouble: 25.0,
      ),
      WeatherFiveDayByHourEntity(
        time: 'Fri, 6 PM',
        iconUrl: 'https://example.com/icon2.png',
        temp: '27°C',
        dtTxt: '2024-05-30 15:00:00',
        tempDouble: 27.0,
      ),
      WeatherFiveDayByHourEntity(
        time: 'Fri, 9 PM',
        iconUrl: 'https://example.com/icon3.png',
        temp: '23°C',
        dtTxt: '2024-05-30 18:00:00',
        tempDouble: 23.0,
      )
    ],
  );
}
