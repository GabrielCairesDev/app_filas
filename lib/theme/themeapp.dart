import 'package:flutter/material.dart';

class ThemeApp {
  ThemeApp._();
  static final themeDart = ThemeData(
    fontFamily: 'RobotoRegular',
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );
}
