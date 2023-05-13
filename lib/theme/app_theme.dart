import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    brightness: Brightness.light,
    scaffoldBackgroundColor: whiteBackground,
    iconTheme: IconThemeData().copyWith(color: blackText80),
    textTheme: Theme.of(context).textTheme.apply(
          displayColor: blackText,
          bodyColor: blackText80,
        ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    brightness: Brightness.light,
    scaffoldBackgroundColor: blackBackground,
    iconTheme: IconThemeData().copyWith(color: whiteText80),
    textTheme: Theme.of(context).textTheme.apply(
          displayColor: whiteText,
          bodyColor: whiteText80,
        ),
  );
}
