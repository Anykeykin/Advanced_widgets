import 'package:advanced_widgets/business/colors_bloc.dart';
import 'package:advanced_widgets/ui/weather_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: colorsBloc.getStream,
        builder: (context, snapshot) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: colorsBloc.selectTheme
                ? ThemeData(
                    primaryColor: colorsBloc.lightColor[0],
                    scaffoldBackgroundColor: colorsBloc.lightColor[0],
                    appBarTheme: AppBarTheme(backgroundColor: colorsBloc.lightColor[3]),
                    textTheme: TextTheme(
                      headline6: TextStyle(color: Colors.white),
                      headline1: TextStyle(color: Colors.black12),
                    ))
                : ThemeData(
                    primaryColor: colorsBloc.darkColor[0],
                    scaffoldBackgroundColor: colorsBloc.darkColor[0],
                    appBarTheme: AppBarTheme(backgroundColor: colorsBloc.darkColor[1]),
                    textTheme: TextTheme(
                      headline6: TextStyle(color: Colors.white),
                      headline1: TextStyle(color: Colors.grey),
                      headline3: TextStyle(color: Colors.white),
                    )),
            home: WeatherPage(),
          );
        });
  }
}
