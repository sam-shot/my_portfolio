// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTheme {
  static final lightTheme = ThemeData(
    backgroundColor: Color.fromARGB(160, 162, 221, 238),
    indicatorColor: Color.fromARGB(255, 240, 188, 242),
    secondaryHeaderColor: Color.fromARGB(255, 154, 106, 212),
    appBarTheme: AppBarTheme(
        backgroundColor: Color.fromARGB(255, 162, 221, 238),
        foregroundColor: Colors.black),
    colorScheme: ColorScheme.light(),
    primaryColor: Color.fromARGB(255, 240, 242, 243),
  );

  static final darkTheme = ThemeData(
      backgroundColor: Color.fromARGB(255, 0, 24, 31),
      indicatorColor: Color.fromARGB(255, 27, 0, 27),
      secondaryHeaderColor: Color.fromARGB(183, 54, 35, 77),
      primaryColor: Color.fromARGB(141, 33, 33, 33),
      appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 1, 29, 37),
          foregroundColor: Colors.white),
      colorScheme: ColorScheme.dark());
}
