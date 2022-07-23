import 'package:advanced_widgets/business/weather_numer.dart';
import 'package:flutter/material.dart';

class SunnyWeather extends StatefulWidget {
  @override
  State<SunnyWeather> createState() => _SunnyWeatherState();
}

class _SunnyWeatherState extends State<SunnyWeather> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: selected ? 0.7 : 0.2,
      origin: selected ? Offset(0.0, 130.0) : Offset(180.0, -180.0),
      child: AnimatedContainer(
        // transformAlignment: t,
        duration: const Duration(seconds: 2),
        curve: Curves.fastOutSlowIn,
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: selected
              ? Column(
                children: [
                  Container(child: Image.asset('assets/sun.png')),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Text('Солнечно, ${WeatherNumer().temp} градусов',
                  style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              )
              : Container(child: Image.asset('assets/sun.png'))
        ),
      ),
    );
  }
}
