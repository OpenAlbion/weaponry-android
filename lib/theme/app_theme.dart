import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    brightness: Brightness.light,
    scaffoldBackgroundColor: whiteBackground,
    cardTheme: CardTheme().copyWith(color: secondaryWhite),
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
    cardTheme: CardTheme().copyWith(color: secondaryBlack),
    iconTheme: IconThemeData().copyWith(color: whiteText80),
    textTheme: Theme.of(context).textTheme.apply(
          displayColor: whiteText,
          bodyColor: whiteText80,
        ),
  );
}

Color get80PercentColor(BuildContext context) {
  return Theme.of(context).textTheme.bodyMedium!.color!;
}

Color get60PercentColor(BuildContext context) {
  return Theme.of(context).textTheme.bodyMedium!.color!.withOpacity(0.2);
}

Color getFullColor(BuildContext context) {
  return Theme.of(context).textTheme.displayMedium!.color!;
}

Color getCardColor(BuildContext context) {
  return Theme.of(context).cardTheme.color!;
}
