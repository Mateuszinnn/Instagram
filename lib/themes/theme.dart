import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: Colors.white,
    primary: Colors.black,
    secondary: Color(0xFFEFEFEF),
  ),
);

ThemeData darkmode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Colors.black,
    primary: Colors.white,
    secondary: Color(0xFF363636),
  ),
);
