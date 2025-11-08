import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Colores principales
  static const Color primary = Color(0xFF1E88E5);
  static const Color secondary = Color(0xFF666666);
  static const Color background = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFFF5F5F5);
  
  // Colores de texto
  static const Color textPrimary = Color(0xFF121212);
  static const Color textSecondary = Color(0xFF424242);
  static const Color textLight = Color(0xFF9E9E9E);
  
  // Colores de estado
  static const Color success = Color(0xFF4CAF50);
  static const Color error = Color(0xFFDC0A2D);
  static const Color warning = Color(0xFFFFA726);
  static const Color info = Color(0xFF29B6F6);
  
  static const Map<String, Color> pokemonTypes = {
    'normal': Color(0xFFA8A878),
    'fire': Color(0xFFF08030),
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
  
  static LinearGradient getTypeGradient(String type) {
    final color = pokemonTypes[type.toLowerCase()] ?? pokemonTypes['normal']!;
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        color,
        color.withOpacity(0.7),
      ],
    );
  }
}
