import 'package:flutter/material.dart';
import 'package:poke_global/core/theme/app_theme.dart';
import 'core/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(PokeGlobal());
}

class PokeGlobal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'PokeGlobal',
      // supportedLocales: const [
      //   Locale('es'),
      // ],
      // debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
    );
  }
}
