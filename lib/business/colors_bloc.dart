

import 'dart:async';

import 'package:advanced_widgets/data/colorsTheme.dart';
import 'package:flutter/material.dart';

class ColorsBloc {
  List lightColor = ColorsTheme().LightColors;
  List darkColor = ColorsTheme().DarkColors;

  bool selectTheme = false;

  final _themeController = StreamController.broadcast();
  Stream get getStream => _themeController.stream;

  void changeTheme() {
    selectTheme = !selectTheme;
    _themeController.sink.add(selectTheme);
  }

  void dispose() {
    _themeController.close();
  }
}

final colorsBloc = ColorsBloc();

