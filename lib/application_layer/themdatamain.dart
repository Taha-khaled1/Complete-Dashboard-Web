import 'package:dashboard/presentation_layer/resource/mangecolor.dart';
import 'package:flutter/material.dart';

ThemeData? theme = ThemeData(
  appBarTheme: const AppBarTheme(
    actionsIconTheme: IconThemeData(color: Colors.black),
    iconTheme: IconThemeData(color: Colors.black),
  ),
  primaryColor: Colors.blue[300],
  fontFamily: 'Cairo',
  textTheme: const TextTheme(
    headline6: TextStyle(
      color: MangerColor.isFavoroteOOff,
      //  fontWeight: FontWeight.bold,
    ),
    headline3: TextStyle(
      color: MangerColor.isFavoroteOOff,
      // fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      color: MangerColor.isFavoroteOOff,
      // fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      color: MangerColor.isFavoroteOOff,
      //  fontWeight: FontWeight.bold,
    ),
    subtitle1: TextStyle(
      color: MangerColor.isFavoroteOOff,
      //  fontWeight: FontWeight.bold,
    ),
  ),
);
