
import 'package:advanced_widgets/business/colors_bloc.dart';
import 'package:advanced_widgets/business/weather_numer.dart';
import 'package:advanced_widgets/data/weather.dart';
import 'package:advanced_widgets/widgets/rainy_weather.dart';
import 'package:advanced_widgets/widgets/sunny_weather.dart';
import 'package:flutter/material.dart';

import '../widgets/cloudy_weather.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Погода'),
        actions: [
          IconButton(
              onPressed: (){
                colorsBloc.changeTheme();
              },
              icon: colorsBloc.selectTheme
                  ?Icon(Icons.dark_mode)
                  :Icon(Icons.light_mode)
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          WeatherNumer().getWeatherWidget(),
        ],
      ),
    );
  }
}
