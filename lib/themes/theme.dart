import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color(0xFF4B39EF), // Púrpura
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF4B39EF),
    secondary: Color(0xFF39D2C0), // Turquesa
    background: Color(0xFFF1F4F8), // Gris claro
    surface: Color(0xFFFFFFFF), // Blanco
    error: Color(0xFFFF5963), // Rojo
  ),
  scaffoldBackgroundColor: const Color(0xFFF1F4F8),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Color(0xFF14181B)), // Negro
    bodyMedium: TextStyle(color: Color(0xFF57636C)), // Gris
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFF1F4F8),
    foregroundColor: Color(0xFF14181B), // Negro
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color(0xFF4B39EF), // Púrpura
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF4B39EF),
    secondary: Color(0xFF39D2C0), // Turquesa
    background: Color(0xFF1D2428), // Gris oscuro
    surface: Color(0xFF14181B), // Gris más oscuro
    error: Color(0xFFFF5963), // Rojo
  ),
  scaffoldBackgroundColor: const Color(0xFF1D2428),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Color(0xFFFFFFFF)), // Blanco
    bodyMedium: TextStyle(color: Color(0xFF95A1AC)), // Gris claro
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1D2428),
    foregroundColor: Color(0xFFFFFFFF), // Blanco
  ),
);
