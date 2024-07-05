import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: Colors.white,
    primary: Colors.black,
    secondary: Color(0xFFEFEFEF),
    tertiary: Color(0xFFEFEFEF),
    onPrimaryContainer: Colors.white,
    onPrimary: Colors.white,
    onSecondaryContainer: Color.fromARGB(255, 221, 221, 221),
    onTertiaryContainer: Colors.white,
  ),
);

ThemeData darkmode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Colors.black,
    primary: Colors.white,
    secondary: Color(0xFF363636),
    tertiary: Color(0xFF484848),
    onPrimary: Color(0xFF344854),
    onPrimaryContainer: Color(0xFF363636),
    onSecondaryContainer: Color.fromARGB(255, 37, 54, 65),
    onTertiaryContainer: Color(0xFF344854),
  ),
);
