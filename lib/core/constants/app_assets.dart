class AppAssets {
  AppAssets._();

  // icons
  static const String iconBug = 'assets/images/icons/bug.svg';
  static const String iconDark = 'assets/images/icons/dark.svg';
  static const String iconDragon = 'assets/images/icons/dragon.svg';
  static const String iconElectric = 'assets/images/icons/electric.svg';
  static const String iconFairy = 'assets/images/icons/fairy.svg';
  static const String iconFighting = 'assets/images/icons/fighting.svg';
  static const String iconFire = 'assets/images/icons/fire.svg';
  static const String iconFlying = 'assets/images/icons/flying.svg';
  static const String iconGhost = 'assets/images/icons/ghost.svg';
  static const String iconGrass = 'assets/images/icons/grass.svg';
  static const String iconGround = 'assets/images/icons/ground.svg';
  static const String iconIce = 'assets/images/icons/ice.svg';
  static const String iconNormal = 'assets/images/icons/normal.svg';
  static const String iconPoison = 'assets/images/icons/poison.svg';
  static const String iconPsychic = 'assets/images/icons/psychic.svg';
  static const String iconRock = 'assets/images/icons/rock.svg';
  static const String iconSteel = 'assets/images/icons/steel.svg';
  static const String iconWater = 'assets/images/icons/water.svg';

  static String getIconForType(String type) {
    const Map<String, String> iconsTypes = {
      'bug': iconBug,
      'dark': iconDark,
      'dragon': iconDragon,
      'electric': iconElectric,
      'fairy': iconFairy,
      'fighting': iconFighting,
      'fire': iconFire,
      'flying': iconFlying,
      'ghost': iconGhost,
      'grass': iconGrass,
      'ground': iconGround,
      'ice': iconIce,
      'normal': iconNormal,
      'poison': iconPoison,
      'psychic': iconPsychic,
      'rock': iconRock,
      'steel': iconSteel,
      'water': iconWater,
    };
    return iconsTypes[type.toLowerCase()] ?? iconNormal;
  }
}
