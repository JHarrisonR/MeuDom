import 'package:flutter/material.dart';

class AppTheme {
  static const primary = Color(0xFF6DA4FD);
  static const accent = Color(0xFFF79F30);
  static const outra = Color(0xFF0A1428);

  static ThemeData ligth() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: primary,
        secondary: Color(0xFF263238),
        surface: Color(0xFFF5F5F5),
        onPrimary: Colors.white,
        onSurface: Colors.black,
        error: primary,
        onError: Color(0xFFced4e3),
      ),
      scaffoldBackgroundColor: Colors.white,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
          primary: primary,
          secondary: Color(0xFFF79F30),
          surface: Color(0xFFCED4E3),
          onPrimary: Colors.white,
          onSurface: Colors.white,
          error: Color(0xFF0A1428),
          onError: Color.fromARGB(255, 111, 124, 156)),
      scaffoldBackgroundColor: Color(0xFF0A1428),
    );
  }
}
