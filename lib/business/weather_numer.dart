
import 'package:advanced_widgets/widgets/cloudy_weather.dart';
import 'package:advanced_widgets/widgets/rainy_weather.dart';
import 'package:advanced_widgets/widgets/sunny_weather.dart';

import '../data/weather.dart';

class WeatherNumer {
  double weatherCount = Weather().nowWeather;
  int temp = Weather().temperature;
  getWeatherWidget() {
    if(weatherCount < 0.5) {
      return SunnyWeather();
    } else if(weatherCount >= 0.5 && weatherCount < 0.7) {
      return CloudyWeather();
    } else {
      return RainyWeather();
    }
  }
}