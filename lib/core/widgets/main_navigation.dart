import 'package:flutter/material.dart';
import 'package:poke_global/core/constants/app_colors.dart';
import 'package:poke_global/core/constants/app_spacing.dart';
import 'package:poke_global/features/favorites/presentation/screens/favorites_screen.dart';
import 'package:poke_global/features/pokemon/presentation/screens/pokedex_screen.dart';
import 'package:poke_global/features/profile/presentation/screens/profile_screen.dart';
import 'package:poke_global/features/regions/presentation/screens/regions_screen.dart';

/// Widget principal con BottomNavigationBar
class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  // Lista de pantallas
  final List<Widget> _screens = [
    const PokedexScreen(),
    const RegionsScreen(),
    const FavoritesScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundLight,
          borderRadius: const BorderRadius.only(
            topLeft: AppSpacing.radiusLG,
            topRight: AppSpacing.radiusLG,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow,
              blurRadius: 10,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: AppSpacing.radiusLG,
            topRight: AppSpacing.radiusLG,
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 26),
                label: 'Pokédex',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.public, size: 26),
                label: 'Regiones',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite, size: 26),
                label: 'Favoritos',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 26),
                label: 'Perfil',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
