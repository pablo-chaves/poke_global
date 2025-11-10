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

  static const Map<String, Color> pokemonTypes = {
    'normal': Color(0xFFA8A878),
    'fire': Color(0xFFFF9800),
    'water': Color(0xFF6890F0),
    'electric': Color(0xFFF8D030),
    'grass': Color(0xFF78C850),
    'ice': Color(0xFF98D8D8),
    'fighting': Color(0xFFC03028),
    'poison': Color(0xFFA040A0),
    'ground': Color(0xFFE0C068),
    'flying': Color(0xFFA890F0),
    'psychic': Color(0xFFF85888),
    'bug': Color(0xFFA8B820),
    'rock': Color(0xFFB8A038),
    'ghost': Color(0xFF705898),
    'dragon': Color(0xFF7038F8),
    'dark': Color(0xFF705848),
    'steel': Color(0xFFB8B8D0),
    'fairy': Color(0xFFEE99AC),
  };

  static Map<String, Color> pokemonLightTypes = {
    // al 50 % del color original
    'normal': Color(0x80A8A878),
    'fire': Color(0x80FF9800),
    'water': Color(0x806890F0),
    'electric': Color(0x80F8D030),
    'grass': Color(0x8078C850),
    'ice': Color(0x8098D8D8),
    'fighting': Color(0x80C03028),
    'poison': Color(0x80A040A0),
    'ground': Color(0x80E0C068),
    'flying': Color(0x80A890F0),
    'psychic': Color(0x80F85888),
    'bug': Color(0x80A8B820),
    'rock': Color(0x80B8A038),
    'ghost': Color(0x80705898),
    'dragon': Color(0x807038F8),
    'dark': Color(0x80705848),
    'steel': Color(0x80B8B8D0),
    'fairy': Color(0x80EE99AC),
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
