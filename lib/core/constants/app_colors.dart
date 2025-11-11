import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Colores principales
  static const Color primary = Color(0xFF1E88E5);
  static const Color secondary = Color(0xFFEEEEEE);
  static const Color backgroundLight = Color(0xFFFEFEFE);
  static const Color surface = Color(0xFF9E9E9E);
  static const Color shadow = Color.fromRGBO(0, 0, 0, 0.2);

  // Colores de texto
  static const Color textPrimary = Color(0xFF121212);
  static const Color textSecondary = Color(0xFF424242);
  static const Color textLight = Color(0xFF9E9E9E);
  static const Color textWhite = Color(0xFFFFFFFF);

  // Colores de estado
  static const Color success = Color(0xFF4CAF50);
  static const Color error = Color(0xFFDC0A2D);
  static const Color warning = Color(0xFFFFA726);
  static const Color info = Color(0xFF29B6F6);

  // Colores de acciones
  static const Color favorite = Color(0xFFE53935);
  static const Color unfavorite = Color(0xFFFFFFFF);

  static const Map<String, Color> pokemonTypes = {
    'normal': Color(0xFF546E7A),
    'fire': Color(0xFFFF9800),
    'water': Color(0xFF2196F3),
    'electric': Color(0xFFFDD835),
    'grass': Color(0xFF8BC34A),
    'ice': Color(0xFF3D8BFF),
    'fighting': Color(0xFFE53935),
    'poison': Color(0xFF9C27B0),
    'ground': Color(0xFFFFB300),
    'flying': Color(0xFF00BCD4),
    'psychic': Color(0xFF673AB7),
    'bug': Color(0xFF43A047),
    'rock': Color(0xFF795548),
    'ghost': Color(0xFF8E24AA),
    'dragon': Color(0xFF8E24AA),
    'dark': Color(0xFF546E7A),
    'steel': Color(0xFF546E7A),
    'fairy': Color(0xFFE91E63),
  };

  static Map<String, Color> pokemonLightTypes = {
    // al 50 % del color original
    'normal': Color(0x80546E7A),
    'fire': Color(0x80FF9800),
    'water': Color(0x802196F3),
    'electric': Color(0x80FDD835),
    'grass': Color(0x808BC34A),
    'ice': Color(0x803D8BFF),
    'fighting': Color(0x80E53935),
    'poison': Color(0x809C27B0),
    'ground': Color(0x80FFB300),
    'flying': Color(0x8000BCD4),
    'psychic': Color(0x80673AB7),
    'bug': Color(0x8043A047),
    'rock': Color(0x80795548),
    'ghost': Color(0x808E24AA),
    'dragon': Color(0x808E24AA),
    'dark': Color(0x80546E7A),
    'steel': Color(0x80546E7A),
    'fairy': Color(0x80E91E63),
  };

  static LinearGradient getTypeGradient(String type) {
    final color =
        pokemonLightTypes[type.toLowerCase()] ?? pokemonTypes['normal']!;
    // el color tiene que ser mas claro
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [color, color.withOpacity(0.7)],
    );
  }
}
